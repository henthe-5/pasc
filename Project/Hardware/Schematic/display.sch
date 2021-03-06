EESchema Schematic File Version 4
LIBS:lab-cache
EELAYER 26 0
EELAYER END
$Descr User 5906 4724
encoding utf-8
Sheet 5 7
Title ""
Date "2019-02-12"
Rev "1"
Comp "PASC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0134
U 1 1 5C58DE2B
P 1450 1900
AR Path="/5C564F2E/5C58DE2B" Ref="#PWR0134"  Part="1" 
AR Path="/5C5FFA20/5C58DE2B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0134" H 1450 1650 50  0001 C CNN
F 1 "GND" H 1455 1727 50  0000 C CNN
F 2 "" H 1450 1900 50  0001 C CNN
F 3 "" H 1450 1900 50  0001 C CNN
	1    1450 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5C58DF2A
P 1450 1600
AR Path="/5C564F2E/5C58DF2A" Ref="C19"  Part="1" 
AR Path="/5C5FFA20/5C58DF2A" Ref="C?"  Part="1" 
F 0 "C19" H 1565 1646 50  0000 L CNN
F 1 "1u" H 1565 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1488 1450 50  0001 C CNN
F 3 "~" H 1450 1600 50  0001 C CNN
	1    1450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1450 1450 1400
Wire Wire Line
	1450 1750 1450 1800
Wire Wire Line
	1450 1400 1650 1400
Connection ~ 1450 1400
Wire Wire Line
	1450 1400 1450 1300
Wire Wire Line
	1450 1800 1650 1800
Connection ~ 1450 1800
Wire Wire Line
	1450 1800 1450 1900
Text Label 1650 1400 0    50   ~ 0
LCD_VDD
Text Label 1650 1800 0    50   ~ 0
LCD_VSS
$Comp
L power:+3.3V #PWR0135
U 1 1 5C66DBDE
P 1450 1300
AR Path="/5C564F2E/5C66DBDE" Ref="#PWR0135"  Part="1" 
AR Path="/5C5FFA20/5C66DBDE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0135" H 1450 1150 50  0001 C CNN
F 1 "+3.3V" H 1465 1473 50  0000 C CNN
F 2 "" H 1450 1300 50  0001 C CNN
F 3 "" H 1450 1300 50  0001 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
$Comp
L PASC:Nokia5110 U6
U 1 1 5C63A382
P 3950 1600
F 0 "U6" H 3950 2075 50  0000 C CNN
F 1 "Nokia5110" H 3950 1984 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4000 1600 50  0001 C CNN
F 3 "" H 4000 1600 50  0001 C CNN
	1    3950 1600
	1    0    0    -1  
$EndComp
Text Label 3450 1350 2    50   ~ 0
LCD_VDD
$Comp
L Device:R R12
U 1 1 5C63A8F8
P 2300 1800
F 0 "R12" H 2370 1846 50  0000 L CNN
F 1 "330" H 2370 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 1800 50  0001 C CNN
F 3 "~" H 2300 1800 50  0001 C CNN
	1    2300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1950 2300 2150
Text Label 2300 2150 0    50   ~ 0
LED
Text Label 3450 1450 2    50   ~ 0
LED
Wire Wire Line
	2300 1650 2300 1450
Text HLabel 2300 1450 1    50   Input ~ 0
LCD_LED
$Comp
L power:GND #PWR0136
U 1 1 5C63AC65
P 4050 2200
F 0 "#PWR0136" H 4050 1950 50  0001 C CNN
F 1 "GND" H 4055 2027 50  0000 C CNN
F 2 "" H 4050 2200 50  0001 C CNN
F 3 "" H 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2050 4050 2200
Text HLabel 3450 1700 0    50   Input ~ 0
LCD_DN
Text HLabel 3450 1800 0    50   Input ~ 0
LCD_SCK
Text HLabel 4450 1450 2    50   Input ~ 0
LCD_SCE
Text HLabel 4450 1550 2    50   Input ~ 0
LCD_RST
Text HLabel 4450 1650 2    50   Input ~ 0
LCD_DC
$EndSCHEMATC
