#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <ds3231.h>
#include "ArduinoMavlink.h"

HardwareSerial &hs = Serial;
ArduinoMavlink mav(hs);

const int channel_A = A1; // positive ions
const int channel_B = A2; // negative ions

const int reset_A = 7; // reset pin for channel A
const int reset_B = 9; // reset pin for channel B

const int SD_CS = 10; // chip select SD card

const uint8_t sample = 60; // cannot be too large because it would deplete all dynamic memory of the Arduino maximum is 64 due to maximum lenght of mavlink data

unsigned long mean_A = 0;
unsigned long mean_B = 0;

String msg = ""; // incomming message
char filename[12];

struct ts t; // time is saved into this struct

File dataFile;
File root;

/*
 * ----------FUNCTION DEFINITION----------
 */
void print_results(int* a, int* b, int n) {
  dataFile = SD.open(filename, FILE_WRITE);
  for (int i=0;i<n;i++) {
    dataFile.print("-");
    dataFile.print(a[i]);
    dataFile.print(" +");
    dataFile.println(b[i]);
  }
  dataFile.close(); 
}

void print_time() {
  dataFile = SD.open(filename, FILE_WRITE);
  DS3231_get(&t);
  dataFile.print(t.mday);
  dataFile.print("/");
  dataFile.print(t.mon);
  dataFile.print("/");
  dataFile.print(t.year);
  dataFile.print(" ");
  dataFile.print(t.hour);
  dataFile.print(":");
  dataFile.print(t.min);
  dataFile.print(":");
  dataFile.println(t.sec);
  dataFile.close();  
}

void get_filename() {
  DS3231_get(&t);
  char buf [2] = {0};
  
  strcpy(filename, itoa(t.mon, buf, 10));
  strcat(filename, itoa(t.mday, buf, 10));
  strcat(filename, itoa(t.hour, buf, 10));
  strcat(filename, itoa(t.min, buf, 10));
  strcat(filename, ".t");

  if(filename[0] == '\0') {
    strcpy(filename, "RTC_error.t");
  }
}

float print_temperature() {
  float temp;
  temp = DS3231_get_treg();
  dataFile = SD.open(filename, FILE_WRITE);
  dataFile.print(temp);
  dataFile.println(" C");
  dataFile.close();
  return temp;
}

float get_temperature() {
  float temp;
  temp = DS3231_get_treg();
  return temp;
}

void reset_gerdien() {
  print_time();
  uint8_t mavlink_reset[8];
  mavlink_reset[0] = t.hour;
  mavlink_reset[1] = t.min;
  mavlink_reset[2] = t.sec;
  digitalWrite(reset_A, HIGH);
  digitalWrite(reset_B, HIGH);
  float temp = print_temperature();
  mavlink_reset[6] = (int) temp;
  mavlink_reset[7] = temp * 10 - (int) temp * 10;
  delay(500);
  digitalWrite(reset_A, LOW);
  digitalWrite(reset_B, LOW);
  delay(500);
  print_time();
  mavlink_reset[3] = t.hour;
  mavlink_reset[4] = t.min;
  mavlink_reset[5] = t.sec;
  send_mavlink(mavlink_reset, "reset");
}

void measure(int window, uint16_t* buf_A, uint16_t* buf_B) {
  for (int j=0;j<sample;j++){
    mean_A = 0;
    mean_B = 0;
    
    for (int i=0;i<window;i++){
      analogRead(channel_A);
      mean_A += analogRead(channel_A);
      analogRead(channel_B);
      mean_B += analogRead(channel_B);
    }
    
    mean_A = int((mean_A / float(window)) + 0.5);
    mean_B = int((mean_B / float(window)) + 0.5);

    buf_A[j] = mean_A;
    buf_B[j] = mean_B;
  }
}

void send_mavlink(uint8_t* data, char* token) {
  if (token == "reset") {
    mav.SendTunnelData(data, sizeof(data), 0, 1, 0);
  }
  else if (token == "positive ions") {
    mav.SendTunnelData(data, sizeof(data), 1, 1, 1);
  }
  else if (token == "negative ions") {
    mav.SendTunnelData(data, sizeof(data), 2, 1, 1);
  }
  else {
    mav.SendTunnelData(0, 1, 3, 1, 1);
  }
}

void convert_array(uint16_t* value, uint8_t* buf) {
  uint8_t lng = sizeof(value);
  for (int i=0;i<lng;i++) {
    buf[i] = value[i] & 0xff;
    buf[i+1] = (value[i] >> 8) & 0xff;
  }
}

/*
 * ----------SETUP STARTS HERE----------
 */

void setup() {
  //Serial.begin(9600);
  Serial.begin(57600);
  while(!mav.begin()){
    Serial.println("Not Connected!");
    delay(250);
  }
  delay(2000);
  
  pinMode(reset_A, OUTPUT);
  pinMode(reset_B, OUTPUT);
  Wire.begin();

  pinMode(SD_CS, OUTPUT);
  digitalWrite(SD_CS, HIGH);

  DS3231_init(DS3231_INTCN);
  
  get_filename();
  Serial.println(filename);
  
  Serial.println("Initializing SD card...");
  if (!SD.begin(SD_CS)) {
    Serial.println("initialization failed!");
    while(1);
  }
  Serial.println("initialization done.");

  //set_time();
}

/*
 * ----------LOOP STARTS HERE----------
 */

void loop() {
  int filter_window = 2048;
  uint16_t buf_A[sample] = {0};
  uint16_t buf_B[sample] = {0};
  
  reset_gerdien(); // resets ionmeter

  measure(filter_window, buf_A, buf_B); // measures voltage of inner electrodes and saves data to arrays

  uint8_t buf[2 * sizeof(buf_A)];
  convert_array(buf_A, buf);
  send_mavlink(buf, 1);
  convert_array(buf_B, buf);
  send_mavlink(buf, 2);
  print_results(buf_A, buf_B, sample); // saves data to SD card
}
