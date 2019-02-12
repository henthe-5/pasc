EESchema Schematic File Version 4
LIBS:lab-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L power:+3.3V #PWR?
U 1 1 5C5AB0A3
P 6200 2950
F 0 "#PWR?" H 6200 2800 50  0001 C CNN
F 1 "+3.3V" H 6215 3123 50  0000 C CNN
F 2 "" H 6200 2950 50  0001 C CNN
F 3 "" H 6200 2950 50  0001 C CNN
	1    6200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2950 6200 3150
Wire Wire Line
	6700 3150 6200 3150
$Comp
L power:GND #PWR?
U 1 1 5C59F3FC
P 7200 3950
F 0 "#PWR?" H 7200 3700 50  0001 C CNN
F 1 "GND" H 7205 3777 50  0000 C CNN
F 2 "" H 7200 3950 50  0001 C CNN
F 3 "" H 7200 3950 50  0001 C CNN
	1    7200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3850 7200 3950
$Comp
L power:GND #PWR?
U 1 1 5C59F76F
P 9000 3600
F 0 "#PWR?" H 9000 3350 50  0001 C CNN
F 1 "GND" H 9005 3427 50  0000 C CNN
F 2 "" H 9000 3600 50  0001 C CNN
F 3 "" H 9000 3600 50  0001 C CNN
	1    9000 3600
	1    0    0    -1  
$EndComp
NoConn ~ 6700 3300
$Comp
L Device:C C?
U 1 1 5C5A61DB
P 6200 3450
F 0 "C?" H 6315 3496 50  0000 L CNN
F 1 "100n" H 6315 3405 50  0000 L CNN
F 2 "" H 6238 3300 50  0001 C CNN
F 3 "~" H 6200 3450 50  0001 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C5A62A1
P 6200 3750
F 0 "#PWR?" H 6200 3500 50  0001 C CNN
F 1 "GND" H 6205 3577 50  0000 C CNN
F 2 "" H 6200 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0001 C CNN
	1    6200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3150 6200 3300
Connection ~ 6200 3150
Wire Wire Line
	6200 3600 6200 3750
Text Notes 9050 3550 0    50   ~ 0
I2C Address: 0x18
Text Label 8000 3350 0    50   ~ 0
SDO
Wire Wire Line
	9000 3400 8900 3400
Wire Wire Line
	9000 3400 9000 3600
Text Label 8900 3400 2    50   ~ 0
SDO
Text Label 8000 3450 0    50   ~ 0
CS_XL
$Comp
L power:+3V3 #PWR?
U 1 1 5C5D1727
P 9000 3000
F 0 "#PWR?" H 9000 2850 50  0001 C CNN
F 1 "+3V3" H 9015 3173 50  0000 C CNN
F 2 "" H 9000 3000 50  0001 C CNN
F 3 "" H 9000 3000 50  0001 C CNN
	1    9000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3000 9000 3200
Wire Wire Line
	9000 3200 8900 3200
Text Label 8900 3200 2    50   ~ 0
CS_XL
Text Notes 9050 3200 0    50   ~ 0
Use I2C.
Text HLabel 8000 3100 2    50   Input ~ 0
I2C1_SCL
Text HLabel 8000 3250 2    50   Input ~ 0
I2C1_SDA
Text HLabel 8000 3550 2    50   Input ~ 0
CS_INT
$Comp
L PASC:lis3dh_board U?
U 1 1 5C5E039C
P 7350 3350
F 0 "U?" H 7350 3825 50  0000 C CNN
F 1 "lis3dh_board" H 7350 3734 50  0000 C CNN
F 2 "PASC:LIS3DH" H 7350 3350 50  0001 C CNN
F 3 "" H 7350 3350 50  0001 C CNN
	1    7350 3350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
