EESchema Schematic File Version 4
LIBS:Gerdien_tube-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Power supply"
Date "2020-02-17"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: Marek Sommer"
$EndDescr
$Comp
L SamacSys_Parts:RP-1212D PS1
U 1 1 5E54E7F2
P 10050 2250
F 0 "PS1" H 10250 2400 50  0000 L CNN
F 1 "RH-1215D" H 10450 1700 50  0000 L CNN
F 2 "SamacSys_Parts:RP1212D" H 10900 2350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/RP-1212D.pdf" H 10900 2250 50  0001 L CNN
F 4 "Recom 1W Isolated DC-DC Converter, Vin 10.8  13.2 V dc, Vout +/-12V dc, I/O isolation 2600V ac" H 10900 2150 50  0001 L CNN "Description"
F 5 "10.7" H 10900 2050 50  0001 L CNN "Height"
F 6 "919-RP-1212D" H 10900 1950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=919-RP-1212D" H 10900 1850 50  0001 L CNN "Mouser Price/Stock"
F 8 "RECOM Power" H 10900 1750 50  0001 L CNN "Manufacturer_Name"
F 9 "RP-1212D" H 10900 1650 50  0001 L CNN "Manufacturer_Part_Number"
	1    10050 2250
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:RP-1212D PS2
U 1 1 5E54E7FF
P 10050 4050
F 0 "PS2" H 10250 4200 50  0000 L CNN
F 1 "RH-1215D" H 10450 3500 50  0000 L CNN
F 2 "SamacSys_Parts:RP1212D" H 10900 4150 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/RP-1212D.pdf" H 10900 4050 50  0001 L CNN
F 4 "Recom 1W Isolated DC-DC Converter, Vin 10.8  13.2 V dc, Vout +/-12V dc, I/O isolation 2600V ac" H 10900 3950 50  0001 L CNN "Description"
F 5 "10.7" H 10900 3850 50  0001 L CNN "Height"
F 6 "919-RP-1212D" H 10900 3750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=919-RP-1212D" H 10900 3650 50  0001 L CNN "Mouser Price/Stock"
F 8 "RECOM Power" H 10900 3550 50  0001 L CNN "Manufacturer_Name"
F 9 "RP-1212D" H 10900 3450 50  0001 L CNN "Manufacturer_Part_Number"
	1    10050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5E54E80C
P 9900 2400
F 0 "#PWR052" H 9900 2150 50  0001 C CNN
F 1 "GND" V 9905 2272 50  0000 R CNN
F 2 "" H 9900 2400 50  0001 C CNN
F 3 "" H 9900 2400 50  0001 C CNN
	1    9900 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 2350 9950 2350
Wire Wire Line
	9950 2350 9950 2400
Wire Wire Line
	9950 2400 9900 2400
Wire Wire Line
	10050 2450 9950 2450
Wire Wire Line
	9950 2450 9950 2400
Connection ~ 9950 2400
Text GLabel 9300 2650 0    50   Output ~ 0
+30V
Text GLabel 9200 4750 3    50   Output ~ 0
-30V
$Comp
L power:GND #PWR053
U 1 1 5E54E81A
P 9950 4150
F 0 "#PWR053" H 9950 3900 50  0001 C CNN
F 1 "GND" V 9955 4022 50  0000 R CNN
F 2 "" H 9950 4150 50  0001 C CNN
F 3 "" H 9950 4150 50  0001 C CNN
	1    9950 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR054
U 1 1 5E54E820
P 9950 4450
F 0 "#PWR054" H 9950 4200 50  0001 C CNN
F 1 "GND" V 9955 4322 50  0000 R CNN
F 2 "" H 9950 4450 50  0001 C CNN
F 3 "" H 9950 4450 50  0001 C CNN
	1    9950 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4150 10050 4150
Wire Wire Line
	9950 4450 10050 4450
Text Notes 8850 800  0    50   ~ 0
Bias power supply
Wire Wire Line
	10050 4050 9600 4050
Wire Wire Line
	10050 2250 9600 2250
$Comp
L Device:R R?
U 1 1 5E54E835
P 9550 2650
AR Path="/5E54E835" Ref="R?"  Part="1" 
AR Path="/5E54E6C3/5E54E835" Ref="R14"  Part="1" 
F 0 "R14" V 9343 2650 50  0000 C CNN
F 1 "10k" V 9434 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 2650 50  0001 C CNN
F 3 "~" H 9550 2650 50  0001 C CNN
	1    9550 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 2650 9400 2650
Wire Wire Line
	9700 2650 10050 2650
$Comp
L Device:R R?
U 1 1 5E54E83E
P 9200 4500
AR Path="/5E54E83E" Ref="R?"  Part="1" 
AR Path="/5E54E6C3/5E54E83E" Ref="R13"  Part="1" 
F 0 "R13" H 9130 4454 50  0000 R CNN
F 1 "10k" H 9130 4545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 4500 50  0001 C CNN
F 3 "~" H 9200 4500 50  0001 C CNN
	1    9200 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5E5875F2
P 9600 3700
F 0 "C11" H 9485 3654 50  0000 R CNN
F 1 "1uF" H 9485 3745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9638 3550 50  0001 C CNN
F 3 "~" H 9600 3700 50  0001 C CNN
	1    9600 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5E587686
P 9600 3400
F 0 "#PWR051" H 9600 3150 50  0001 C CNN
F 1 "GND" H 9605 3227 50  0000 C CNN
F 2 "" H 9600 3400 50  0001 C CNN
F 3 "" H 9600 3400 50  0001 C CNN
	1    9600 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 1050 9000 2250
Connection ~ 9000 2250
Wire Wire Line
	9000 2250 9000 4050
Wire Wire Line
	9600 4050 9600 3850
Connection ~ 9600 4050
Wire Wire Line
	9600 4050 9000 4050
Wire Wire Line
	9600 3400 9600 3550
$Comp
L Device:C C10
U 1 1 5E58860D
P 9600 1900
F 0 "C10" H 9485 1854 50  0000 R CNN
F 1 "1uF" H 9485 1945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9638 1750 50  0001 C CNN
F 3 "~" H 9600 1900 50  0001 C CNN
	1    9600 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR050
U 1 1 5E588614
P 9600 1600
F 0 "#PWR050" H 9600 1350 50  0001 C CNN
F 1 "GND" H 9605 1427 50  0000 C CNN
F 2 "" H 9600 1600 50  0001 C CNN
F 3 "" H 9600 1600 50  0001 C CNN
	1    9600 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 2250 9600 2050
Wire Wire Line
	9600 1600 9600 1750
Connection ~ 9600 2250
Wire Wire Line
	9600 2250 9000 2250
Wire Wire Line
	10050 4250 9200 4250
Wire Notes Line
	8850 800  11050 800 
Wire Notes Line
	11050 800  11050 5050
Wire Notes Line
	11050 5050 8850 5050
Wire Notes Line
	8850 5050 8850 800 
NoConn ~ 10050 4350
NoConn ~ 10050 2550
Wire Wire Line
	9200 4250 9200 4350
Wire Wire Line
	9200 4650 9200 4750
Text GLabel 5550 6650 0    50   Input ~ 0
+30V
Text GLabel 5550 7300 0    50   Input ~ 0
-30V
Wire Wire Line
	5550 6650 5700 6650
Wire Notes Line
	5150 6200 6800 6200
Wire Notes Line
	6800 6200 6800 7650
Wire Notes Line
	6800 7650 5150 7650
Wire Notes Line
	5150 7650 5150 6200
Text Notes 5150 6200 0    50   ~ 0
Bias voltage output
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5E5D2B5D
P 5950 6700
F 0 "J9" H 5923 6580 50  0000 R CNN
F 1 "Conn_01x02_Male" H 5923 6671 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 5950 6700 50  0001 C CNN
F 3 "~" H 5950 6700 50  0001 C CNN
	1    5950 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 6650 5700 6600
Wire Wire Line
	5700 6600 5750 6600
Wire Wire Line
	5700 6650 5700 6700
Wire Wire Line
	5700 6700 5750 6700
Connection ~ 5700 6650
Wire Wire Line
	5550 7300 5700 7300
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 5E5D3B94
P 5950 7350
F 0 "J10" H 5923 7230 50  0000 R CNN
F 1 "Conn_01x02_Male" H 5923 7321 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 5950 7350 50  0001 C CNN
F 3 "~" H 5950 7350 50  0001 C CNN
	1    5950 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 7300 5700 7250
Wire Wire Line
	5700 7250 5750 7250
Wire Wire Line
	5700 7300 5700 7350
Wire Wire Line
	5700 7350 5750 7350
Connection ~ 5700 7300
$Comp
L Connector:Barrel_Jack J8
U 1 1 5F4E4B2B
P 3700 1200
F 0 "J8" H 3755 1525 50  0000 C CNN
F 1 "Barrel_Jack" H 3755 1434 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 3750 1160 50  0001 C CNN
F 3 "~" H 3750 1160 50  0001 C CNN
	1    3700 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR049
U 1 1 5F509F24
P 9000 1050
F 0 "#PWR049" H 9000 900 50  0001 C CNN
F 1 "+5VP" H 9015 1223 50  0000 C CNN
F 2 "" H 9000 1050 50  0001 C CNN
F 3 "" H 9000 1050 50  0001 C CNN
	1    9000 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5F55196E
P 1900 2050
AR Path="/5F55196E" Ref="J?"  Part="1" 
AR Path="/5E54E6C3/5F55196E" Ref="J5"  Part="1" 
F 0 "J5" H 1980 2042 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 1980 1951 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00278_1x04_P5.00mm_Vertical" H 1900 2050 50  0001 C CNN
F 3 "~" H 1900 2050 50  0001 C CNN
	1    1900 2050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH5
U 1 1 5F56171A
P 900 850
F 0 "MH5" H 1000 896 50  0000 L CNN
F 1 "MountingHole" H 1000 805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 900 850 50  0001 C CNN
F 3 "~" H 900 850 50  0001 C CNN
	1    900  850 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH6
U 1 1 5F561768
P 900 1100
F 0 "MH6" H 1000 1146 50  0000 L CNN
F 1 "MountingHole" H 1000 1055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 900 1100 50  0001 C CNN
F 3 "~" H 900 1100 50  0001 C CNN
	1    900  1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH7
U 1 1 5F5617A0
P 900 1350
F 0 "MH7" H 1000 1396 50  0000 L CNN
F 1 "MountingHole" H 1000 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 900 1350 50  0001 C CNN
F 3 "~" H 900 1350 50  0001 C CNN
	1    900  1350
	1    0    0    -1  
$EndComp
Wire Notes Line
	750  1500 750  650 
Text Notes 750  650  0    50   ~ 0
Battery holder
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5F5631FD
P 2300 850
F 0 "J6" H 2327 876 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 785 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 850 50  0001 C CNN
F 3 "~" H 2300 850 50  0001 C CNN
	1    2300 850 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 5F563245
P 2300 1250
F 0 "J7" H 2327 1276 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 1185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 1250 50  0001 C CNN
F 3 "~" H 2300 1250 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
Wire Notes Line
	750  650  3150 650 
Wire Notes Line
	3150 650  3150 1500
Wire Notes Line
	3150 1500 750  1500
$Comp
L power:GND #PWR039
U 1 1 5F56632E
P 2000 1250
F 0 "#PWR039" H 2000 1000 50  0001 C CNN
F 1 "GND" V 2005 1122 50  0000 R CNN
F 2 "" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 1250 2100 1250
$Comp
L power:+BATT #PWR038
U 1 1 5F566E84
P 2000 850
F 0 "#PWR038" H 2000 700 50  0001 C CNN
F 1 "+BATT" V 2015 977 50  0000 L CNN
F 2 "" H 2000 850 50  0001 C CNN
F 3 "" H 2000 850 50  0001 C CNN
	1    2000 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 850  2100 850 
$Comp
L power:+5VP #PWR034
U 1 1 5F56E379
P 1350 2100
F 0 "#PWR034" H 1350 1950 50  0001 C CNN
F 1 "+5VP" V 1365 2228 50  0000 L CNN
F 2 "" H 1350 2100 50  0001 C CNN
F 3 "" H 1350 2100 50  0001 C CNN
	1    1350 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 2100 1500 2100
Wire Wire Line
	1500 2100 1500 2050
Wire Wire Line
	1500 2050 1700 2050
Wire Wire Line
	1500 2100 1500 2150
Wire Wire Line
	1500 2150 1700 2150
Connection ~ 1500 2100
$Comp
L power:GND #PWR035
U 1 1 5F56FEBF
P 1500 1950
F 0 "#PWR035" H 1500 1700 50  0001 C CNN
F 1 "GND" V 1505 1822 50  0000 R CNN
F 2 "" H 1500 1950 50  0001 C CNN
F 3 "" H 1500 1950 50  0001 C CNN
	1    1500 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 1950 1700 1950
$Comp
L power:GND #PWR036
U 1 1 5F570D5E
P 1500 2250
F 0 "#PWR036" H 1500 2000 50  0001 C CNN
F 1 "GND" V 1505 2122 50  0000 R CNN
F 2 "" H 1500 2250 50  0001 C CNN
F 3 "" H 1500 2250 50  0001 C CNN
	1    1500 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2250 1700 2250
Wire Notes Line
	950  1850 2900 1850
Wire Notes Line
	2900 1850 2900 2350
Wire Notes Line
	2900 2350 950  2350
Wire Notes Line
	950  2350 950  1850
Text Notes 950  1850 0    50   ~ 0
Fan power supply
$Comp
L dk_PMIC-OR-Controllers-Ideal-Diodes:LTC4412ES6_TRMPBF Q4
U 1 1 5F57474B
P 6700 1800
F 0 "Q4" H 7141 1453 60  0000 L CNN
F 1 "LTC4412ES6_TRMPBF" H 7141 1347 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-6" H 6900 2000 60  0001 L CNN
F 3 "http://www.linear.com/docs/1527" H 6900 2100 60  0001 L CNN
F 4 "LTC4412ES6#TRMPBFCT-ND" H 6900 2200 60  0001 L CNN "Digi-Key_PN"
F 5 "LTC4412ES6#TRMPBF" H 6900 2300 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 6900 2400 60  0001 L CNN "Category"
F 7 "PMIC - OR Controllers, Ideal Diodes" H 6900 2500 60  0001 L CNN "Family"
F 8 "http://www.linear.com/docs/1527" H 6900 2600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/linear-technology-analog-devices/LTC4412ES6-TRMPBF/LTC4412ES6-TRMPBFCT-ND/890097" H 6900 2700 60  0001 L CNN "DK_Detail_Page"
F 10 "IC OR CTRLR SRC SELECT TSOT23-6" H 6900 2800 60  0001 L CNN "Description"
F 11 "Linear Technology/Analog Devices" H 6900 2900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6900 3000 60  0001 L CNN "Status"
	1    6700 1800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D2
U 1 1 5F574B64
P 4600 1100
F 0 "D2" H 4600 884 50  0000 C CNN
F 1 "1N5819" H 4600 975 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4600 925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4600 1100 50  0001 C CNN
	1    4600 1100
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:FDN306P Q3
U 1 1 5F574E9B
P 5500 1650
F 0 "Q3" V 6067 1750 50  0000 C CNN
F 1 "FDN306P" V 5976 1750 50  0000 C CNN
F 2 "SamacSys_Parts:SOT95P237X112-3N" H 5950 1600 50  0001 L CNN
F 3 "" H 5950 1500 50  0001 L CNN
F 4 "FDN306P P-Channel MOSFET, 2.6 A, 12 V PowerTrench, 3-Pin SOT-23 ON Semiconductor" H 5950 1400 50  0001 L CNN "Description"
F 5 "1.12" H 5950 1300 50  0001 L CNN "Height"
F 6 "512-FDN306P" H 5950 1200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ON-Semiconductor-Fairchild/FDN306P?qs=GeD7q9OHBPy9Kkc110idSQ%3D%3D" H 5950 1100 50  0001 L CNN "Mouser Price/Stock"
F 8 "ON Semiconductor" H 5950 1000 50  0001 L CNN "Manufacturer_Name"
F 9 "FDN306P" H 5950 900 50  0001 L CNN "Manufacturer_Part_Number"
	1    5500 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5F575696
P 4100 1400
F 0 "#PWR040" H 4100 1150 50  0001 C CNN
F 1 "GND" H 4105 1227 50  0000 C CNN
F 2 "" H 4100 1400 50  0001 C CNN
F 3 "" H 4100 1400 50  0001 C CNN
	1    4100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1400 4100 1300
Wire Wire Line
	4100 1300 4000 1300
Wire Wire Line
	4000 1100 4450 1100
Wire Wire Line
	4750 1100 5850 1100
$Comp
L power:+BATT #PWR044
U 1 1 5F57C955
P 4700 1350
F 0 "#PWR044" H 4700 1200 50  0001 C CNN
F 1 "+BATT" V 4715 1477 50  0000 L CNN
F 2 "" H 4700 1350 50  0001 C CNN
F 3 "" H 4700 1350 50  0001 C CNN
	1    4700 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 1350 4900 1350
$Comp
L power:GND #PWR045
U 1 1 5F57E3AC
P 6200 2100
F 0 "#PWR045" H 6200 1850 50  0001 C CNN
F 1 "GND" V 6205 1972 50  0000 R CNN
F 2 "" H 6200 2100 50  0001 C CNN
F 3 "" H 6200 2100 50  0001 C CNN
	1    6200 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2100 6300 2100
Wire Wire Line
	5850 2300 6300 2300
Wire Wire Line
	6300 2200 5500 2200
Wire Wire Line
	5700 1350 5850 1350
Wire Wire Line
	5850 1350 5850 1100
$Comp
L power:GND #PWR046
U 1 1 5F587606
P 6800 2600
F 0 "#PWR046" H 6800 2350 50  0001 C CNN
F 1 "GND" H 6805 2427 50  0000 C CNN
F 2 "" H 6800 2600 50  0001 C CNN
F 3 "" H 6800 2600 50  0001 C CNN
	1    6800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2500 6800 2600
Wire Wire Line
	5850 1350 5850 2300
Connection ~ 5850 1350
Wire Wire Line
	5500 1650 5500 2200
Wire Wire Line
	4900 1350 4900 1750
Wire Wire Line
	4900 1750 6700 1750
Wire Wire Line
	6700 1750 6700 1900
Connection ~ 4900 1350
Wire Wire Line
	4900 1350 5100 1350
Text GLabel 7600 2100 2    50   Output ~ 0
PWR_STATUS
Wire Notes Line
	3400 650  8150 650 
Wire Notes Line
	8150 650  8150 2950
Wire Notes Line
	8150 2950 3400 2950
Wire Notes Line
	3400 2950 3400 650 
Text Notes 3400 650  0    50   ~ 0
Automatic power changeover - battery, wall adapter input
$Comp
L Device:C C9
U 1 1 5F59CABF
P 7200 1550
F 0 "C9" H 7315 1596 50  0000 L CNN
F 1 "22uF" H 7315 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7238 1400 50  0001 C CNN
F 3 "~" H 7200 1550 50  0001 C CNN
	1    7200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 5F59CB2B
P 7200 1750
F 0 "#PWR047" H 7200 1500 50  0001 C CNN
F 1 "GND" H 7205 1577 50  0000 C CNN
F 2 "" H 7200 1750 50  0001 C CNN
F 3 "" H 7200 1750 50  0001 C CNN
	1    7200 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1700 7200 1750
Wire Wire Line
	7200 1350 7200 1400
Wire Wire Line
	7200 1350 7500 1350
$Comp
L power:+VDC #PWR048
U 1 1 5F5A0C10
P 7500 1350
F 0 "#PWR048" H 7500 1250 50  0001 C CNN
F 1 "+VDC" V 7500 1580 50  0000 L CNN
F 2 "" H 7500 1350 50  0001 C CNN
F 3 "" H 7500 1350 50  0001 C CNN
	1    7500 1350
	0    1    1    0   
$EndComp
NoConn ~ 1700 3850
$Comp
L power:GND #PWR037
U 1 1 5F5AAD81
P 1500 3650
F 0 "#PWR037" H 1500 3400 50  0001 C CNN
F 1 "GND" V 1505 3522 50  0000 R CNN
F 2 "" H 1500 3650 50  0001 C CNN
F 3 "" H 1500 3650 50  0001 C CNN
	1    1500 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 3650 1700 3650
$Comp
L power:+VDC #PWR033
U 1 1 5F5AC491
P 1250 3750
F 0 "#PWR033" H 1250 3650 50  0001 C CNN
F 1 "+VDC" V 1250 3979 50  0000 L CNN
F 2 "" H 1250 3750 50  0001 C CNN
F 3 "" H 1250 3750 50  0001 C CNN
	1    1250 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 3750 1700 3750
$Comp
L power:GND #PWR041
U 1 1 5F5AE00E
P 4300 3750
F 0 "#PWR041" H 4300 3500 50  0001 C CNN
F 1 "GND" V 4305 3622 50  0000 R CNN
F 2 "" H 4300 3750 50  0001 C CNN
F 3 "" H 4300 3750 50  0001 C CNN
	1    4300 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 3750 4300 3750
$Comp
L power:+5VP #PWR043
U 1 1 5F5AFBD2
P 4600 3850
F 0 "#PWR043" H 4600 3700 50  0001 C CNN
F 1 "+5VP" V 4615 3978 50  0000 L CNN
F 2 "" H 4600 3850 50  0001 C CNN
F 3 "" H 4600 3850 50  0001 C CNN
	1    4600 3850
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5F5AFF92
P 4350 4100
F 0 "C8" H 4465 4146 50  0000 L CNN
F 1 "10uF" H 4465 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4388 3950 50  0001 C CNN
F 3 "~" H 4350 4100 50  0001 C CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3850 4350 3850
Wire Wire Line
	4350 3950 4350 3850
Connection ~ 4350 3850
Wire Wire Line
	4350 3850 4600 3850
$Comp
L power:GND #PWR042
U 1 1 5F5B335F
P 4350 4350
F 0 "#PWR042" H 4350 4100 50  0001 C CNN
F 1 "GND" H 4355 4177 50  0000 C CNN
F 2 "" H 4350 4350 50  0001 C CNN
F 3 "" H 4350 4350 50  0001 C CNN
	1    4350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4250 4350 4350
Wire Notes Line
	750  3150 5050 3150
Wire Notes Line
	5050 3150 5050 4650
Wire Notes Line
	5050 4650 750  4650
Wire Notes Line
	750  4650 750  3150
Text Notes 750  3150 0    50   ~ 0
Buck converter - 7-9V -> 5V (78%)
$Comp
L 2020-07-27_12-11-41:TEC_3-0910 U1
U 1 1 5F784686
P 1700 3650
F 0 "U1" H 2900 4037 60  0000 C CNN
F 1 "TEC_3-0910" H 2900 3931 60  0000 C CNN
F 2 "digikey-footprints:TEC3_0911" H 2900 3890 60  0001 C CNN
F 3 "" H 1700 3650 60  0000 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5F28894C
P 6650 1050
F 0 "J11" V 6710 1090 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6801 1090 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6650 1050 50  0001 C CNN
F 3 "~" H 6650 1050 50  0001 C CNN
	1    6650 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 1350 6550 1350
Wire Wire Line
	6550 1350 6550 1250
Wire Wire Line
	6650 1250 6650 1350
Wire Wire Line
	6650 1350 7200 1350
Connection ~ 7200 1350
$Comp
L Device:R R15
U 1 1 5F28DEF2
P 7500 1900
F 0 "R15" H 7570 1946 50  0000 L CNN
F 1 "470k" H 7570 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 1900 50  0001 C CNN
F 3 "~" H 7500 1900 50  0001 C CNN
	1    7500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2100 7500 2100
Wire Wire Line
	7500 2050 7500 2100
Connection ~ 7500 2100
Wire Wire Line
	7500 2100 7600 2100
$Comp
L power:+5V #PWR0102
U 1 1 5F291B1D
P 7650 1700
F 0 "#PWR0102" H 7650 1550 50  0001 C CNN
F 1 "+5V" V 7665 1828 50  0000 L CNN
F 2 "" H 7650 1700 50  0001 C CNN
F 3 "" H 7650 1700 50  0001 C CNN
	1    7650 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 1700 7500 1700
Wire Wire Line
	7500 1700 7500 1750
$EndSCHEMATC
