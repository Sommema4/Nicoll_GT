#include<SoftwareSerial.h>

#define BT_SERIAL_RX 11
#define BT_SERIAL_TX 10
SoftwareSerial BluetoothSerial(BT_SERIAL_RX, BT_SERIAL_TX);

// These constants won't change. They're used to give names to the pins used:
const int channel_A = A1; // positive ions
const int channel_B = A2; // negative ions

const int reset_A = 7;
const int reset_B = 9;

int filter = 20;
int mean_A, mean_B;

void setup() {
  Serial.begin(9600);
  BluetoothSerial.begin(9600);
  pinMode(reset_A, OUTPUT);
  pinMode(reset_B, OUTPUT);
}

void loop() {
  BluetoothSerial.write("reset");
  BluetoothSerial.println("reset");
  Serial.println("reset");
  digitalWrite(reset_A, HIGH);
  digitalWrite(reset_B, HIGH);
  delay(3000);
  digitalWrite(reset_A, LOW);
  digitalWrite(reset_B, LOW);
  delay(1000);

  for (int i=0;i<256;i++){
    mean_A = 0;
    mean_B = 0;
    //sensorValue_B = 0;
    for (int j=0;j<filter;j++){
        mean_A += analogRead(channel_A);
        delay(10);
        mean_B += analogRead(channel_B);
        delay(40);
    }
    
    mean_A = int((mean_A / float(filter)) + 0.5);
    mean_B = int((mean_B / float(filter)) + 0.5);
    
    BluetoothSerial.write(mean_A);
    BluetoothSerial.println(mean_A);
    Serial.println(mean_A);
    delay(10);
    BluetoothSerial.write(mean_B);
    BluetoothSerial.println(mean_B);
    Serial.println(mean_B);
  }
}
