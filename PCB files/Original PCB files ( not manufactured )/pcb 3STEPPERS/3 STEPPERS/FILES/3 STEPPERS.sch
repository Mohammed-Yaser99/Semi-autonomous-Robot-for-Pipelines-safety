EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A2
U 1 1 608F23B6
P 5700 1500
F 0 "A2" H 5750 2381 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 5750 2290 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5975 750 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 5800 1200 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A4
U 1 1 608F2C50
P 5750 3300
F 0 "A4" H 5800 4181 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 5800 4090 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 6025 2550 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 5850 3000 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A3
U 1 1 608F37B0
P 5700 5100
F 0 "A3" H 5750 5981 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 5750 5890 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5975 4350 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 5800 4800 50  0001 C CNN
	1    5700 5100
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 608F4320
P 3250 3250
F 0 "A1" H 3250 4431 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 3250 4340 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 3250 3250 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 3250 3250 50  0001 C CNN
	1    3250 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 5000 6200 5000
Wire Wire Line
	6400 5100 6200 5100
Wire Wire Line
	6400 5200 6200 5200
Wire Wire Line
	6400 5300 6200 5300
Wire Wire Line
	6500 3200 6250 3200
Wire Wire Line
	6500 3300 6250 3300
Wire Wire Line
	6500 3400 6250 3400
Wire Wire Line
	6500 3500 6250 3500
Wire Wire Line
	5350 2900 5350 3000
Wire Wire Line
	5300 1100 5300 1200
Wire Wire Line
	5300 4700 5300 4800
Wire Wire Line
	6550 1400 6200 1400
Wire Wire Line
	6550 1500 6200 1500
Wire Wire Line
	6550 1600 6200 1600
Wire Wire Line
	6550 1700 6200 1700
$Comp
L power:+5V #PWR0101
U 1 1 609030EF
P 3050 2050
F 0 "#PWR0101" H 3050 1900 50  0001 C CNN
F 1 "+5V" H 3065 2223 50  0000 C CNN
F 2 "" H 3050 2050 50  0001 C CNN
F 3 "" H 3050 2050 50  0001 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 6090393A
P 5700 800
F 0 "#PWR0102" H 5700 650 50  0001 C CNN
F 1 "+5V" H 5715 973 50  0000 C CNN
F 2 "" H 5700 800 50  0001 C CNN
F 3 "" H 5700 800 50  0001 C CNN
	1    5700 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 60903B04
P 5750 2600
F 0 "#PWR0103" H 5750 2450 50  0001 C CNN
F 1 "+5V" H 5765 2773 50  0000 C CNN
F 2 "" H 5750 2600 50  0001 C CNN
F 3 "" H 5750 2600 50  0001 C CNN
	1    5750 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 60903D0C
P 5700 4400
F 0 "#PWR0104" H 5700 4250 50  0001 C CNN
F 1 "+5V" H 5715 4573 50  0000 C CNN
F 2 "" H 5700 4400 50  0001 C CNN
F 3 "" H 5700 4400 50  0001 C CNN
	1    5700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2050 3050 2250
$Comp
L power:GND #PWR0105
U 1 1 6090849C
P 3150 4350
F 0 "#PWR0105" H 3150 4100 50  0001 C CNN
F 1 "GND" H 3155 4177 50  0000 C CNN
F 2 "" H 3150 4350 50  0001 C CNN
F 3 "" H 3150 4350 50  0001 C CNN
	1    3150 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60909A0F
P 5700 2300
F 0 "#PWR0106" H 5700 2050 50  0001 C CNN
F 1 "GND" H 5705 2127 50  0000 C CNN
F 2 "" H 5700 2300 50  0001 C CNN
F 3 "" H 5700 2300 50  0001 C CNN
	1    5700 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60909BB8
P 5750 4100
F 0 "#PWR0107" H 5750 3850 50  0001 C CNN
F 1 "GND" H 5755 3927 50  0000 C CNN
F 2 "" H 5750 4100 50  0001 C CNN
F 3 "" H 5750 4100 50  0001 C CNN
	1    5750 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60909EE1
P 5700 5900
F 0 "#PWR0108" H 5700 5650 50  0001 C CNN
F 1 "GND" H 5705 5727 50  0000 C CNN
F 2 "" H 5700 5900 50  0001 C CNN
F 3 "" H 5700 5900 50  0001 C CNN
	1    5700 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1500 4300 1500
Wire Wire Line
	4300 1500 4300 2650
Wire Wire Line
	5300 1600 4350 1600
Wire Wire Line
	4350 1600 4350 2750
Wire Wire Line
	5350 3300 4400 3300
Wire Wire Line
	4400 3300 4400 2850
Wire Wire Line
	5350 3400 4350 3400
Wire Wire Line
	4350 3400 4350 2950
Wire Wire Line
	5300 5100 4200 5100
Wire Wire Line
	4200 5100 4200 3050
Wire Wire Line
	5300 5200 4150 5200
Wire Wire Line
	4150 5200 4150 3150
$Comp
L Device:Battery BT1
U 1 1 6091029C
P 9400 3000
F 0 "BT1" H 9508 3046 50  0000 L CNN
F 1 "Battery" H 9508 2955 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" V 9400 3060 50  0001 C CNN
F 3 "~" V 9400 3060 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C100microF1
U 1 1 60911641
P 8950 3000
F 0 "C100microF1" H 9065 3046 50  0000 L CNN
F 1 "CP1" H 9065 2955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P7.50mm" H 8950 3000 50  0001 C CNN
F 3 "~" H 8950 3000 50  0001 C CNN
	1    8950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2850 9300 2850
Wire Wire Line
	9300 2850 9300 2800
Wire Wire Line
	9300 2800 9400 2800
Wire Wire Line
	9400 3200 8950 3200
Wire Wire Line
	8950 3200 8950 3150
Wire Wire Line
	8950 2850 8500 2850
Wire Wire Line
	8500 2850 8500 2600
Wire Wire Line
	8500 800  5900 800 
Connection ~ 8950 2850
Wire Wire Line
	8950 3200 8950 4100
Wire Wire Line
	8950 5900 5900 5900
Connection ~ 8950 3200
Wire Wire Line
	5950 4100 8950 4100
Connection ~ 8950 4100
Wire Wire Line
	8950 4100 8950 4800
Wire Wire Line
	5900 4400 8500 4400
Wire Wire Line
	8500 4400 8500 2850
Connection ~ 8500 2850
Wire Wire Line
	5950 2600 8500 2600
Connection ~ 8500 2600
Wire Wire Line
	8500 2600 8500 800 
Wire Wire Line
	5900 2300 7850 2300
Wire Wire Line
	7850 2300 7850 4800
Wire Wire Line
	7850 4800 8950 4800
Connection ~ 8950 4800
Wire Wire Line
	8950 4800 8950 5900
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 6091A3BB
P 6700 3300
F 0 "J2" H 6728 3276 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6728 3185 50  0000 L CNN
F 2 "Connector_PinSocket_1.00mm:PinSocket_1x04_P1.00mm_Vertical" H 6700 3300 50  0001 C CNN
F 3 "~" H 6700 3300 50  0001 C CNN
	1    6700 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 6091CE3F
P 6750 1500
F 0 "J3" H 6778 1476 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6778 1385 50  0000 L CNN
F 2 "Connector_PinSocket_1.00mm:PinSocket_1x04_P1.00mm_Vertical" H 6750 1500 50  0001 C CNN
F 3 "~" H 6750 1500 50  0001 C CNN
	1    6750 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 6091D5E8
P 6600 5100
F 0 "J1" H 6628 5076 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6628 4985 50  0000 L CNN
F 2 "Connector_PinSocket_1.00mm:PinSocket_1x04_P1.00mm_Vertical" H 6600 5100 50  0001 C CNN
F 3 "~" H 6600 5100 50  0001 C CNN
	1    6600 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J4
U 1 1 6091DF42
P 3850 2950
F 0 "J4" H 3958 3431 50  0000 C CNN
F 1 "Conn_01x08_Male" H 3958 3340 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3850 2950 50  0001 C CNN
F 3 "~" H 3850 2950 50  0001 C CNN
	1    3850 2950
	1    0    0    -1  
$EndComp
Connection ~ 4050 2650
Wire Wire Line
	4050 2650 3750 2650
Connection ~ 4050 2750
Wire Wire Line
	4050 2750 3750 2750
Connection ~ 4050 2850
Wire Wire Line
	4050 2850 3750 2850
Connection ~ 4050 2950
Wire Wire Line
	4050 2950 3750 2950
Connection ~ 4050 3050
Wire Wire Line
	4050 3050 3750 3050
Connection ~ 4050 3150
Wire Wire Line
	4050 3150 3750 3150
Wire Wire Line
	4150 3150 4050 3150
Wire Wire Line
	4200 3050 4050 3050
Wire Wire Line
	4350 2950 4050 2950
Wire Wire Line
	4400 2850 4050 2850
Wire Wire Line
	4350 2750 4050 2750
Wire Wire Line
	4300 2650 4050 2650
$Comp
L Connector:Conn_01x10_Male J5
U 1 1 6094C17C
P 4050 3950
F 0 "J5" H 4022 3832 50  0000 R CNN
F 1 "Conn_01x10_Male" H 4022 3923 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 4050 3950 50  0001 C CNN
F 3 "~" H 4050 3950 50  0001 C CNN
	1    4050 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 3450 3750 3450
Wire Wire Line
	3850 3550 3750 3550
Wire Wire Line
	3850 3650 3750 3650
Wire Wire Line
	3850 3750 3750 3750
Wire Wire Line
	3850 3850 3750 3850
Wire Wire Line
	3850 3950 3750 3950
Wire Wire Line
	3850 4050 3700 4050
Wire Wire Line
	3700 4050 3700 4350
Wire Wire Line
	3700 4350 3350 4350
Wire Wire Line
	3850 4150 3750 4150
Wire Wire Line
	3750 4150 3750 4850
Wire Wire Line
	3750 4850 2200 4850
Wire Wire Line
	2200 4850 2200 3050
Wire Wire Line
	2200 3050 2750 3050
Wire Wire Line
	3850 4250 3800 4250
Wire Wire Line
	3800 4250 3800 4700
Wire Wire Line
	3800 4700 2550 4700
Wire Wire Line
	2550 4700 2550 3950
Wire Wire Line
	2550 3950 2750 3950
Wire Wire Line
	3850 4350 3850 4800
Wire Wire Line
	3850 4800 2750 4800
Wire Wire Line
	2750 4800 2750 4050
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 60967EF2
P 2550 3450
F 0 "J6" H 2658 3831 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2658 3740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2550 3450 50  0001 C CNN
F 3 "~" H 2550 3450 50  0001 C CNN
	1    2550 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J7
U 1 1 609713D3
P 1600 2750
F 0 "J7" H 1708 3231 50  0000 C CNN
F 1 "Conn_01x08_Male" H 1708 3140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1600 2750 50  0001 C CNN
F 3 "~" H 1600 2750 50  0001 C CNN
	1    1600 2750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
