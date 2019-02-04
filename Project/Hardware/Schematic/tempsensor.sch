EESchema Schematic File Version 4
LIBS:lab-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L Sensor_Temperature:PT1000 TH?
U 1 1 5C561FEF
P 3200 2600
F 0 "TH?" H 3298 2646 50  0000 L CNN
F 1 "PT1000" H 3298 2555 50  0000 L CNN
F 2 "" H 3200 2650 50  0001 C CNN
F 3 "https://www.heraeus.com/media/media/group/doc_group/products_1/hst/sot_to/de_15/to_92_d.pdf" H 3200 2650 50  0001 C CNN
	1    3200 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C5621D5
P 3200 2200
F 0 "R?" H 3270 2246 50  0000 L CNN
F 1 "1k" H 3270 2155 50  0000 L CNN
F 2 "" V 3130 2200 50  0001 C CNN
F 3 "~" H 3200 2200 50  0001 C CNN
	1    3200 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C5622D1
P 1900 2600
F 0 "R?" H 1970 2646 50  0000 L CNN
F 1 "8.2k" H 1970 2555 50  0000 L CNN
F 2 "" V 1830 2600 50  0001 C CNN
F 3 "~" H 1900 2600 50  0001 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C562312
P 3200 3200
F 0 "R?" H 3270 3246 50  0000 L CNN
F 1 "1.8k" H 3270 3155 50  0000 L CNN
F 2 "" V 3130 3200 50  0001 C CNN
F 3 "~" H 3200 3200 50  0001 C CNN
	1    3200 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C56234C
P 1900 3200
F 0 "R?" H 1970 3246 50  0000 L CNN
F 1 "8.2k" H 1970 3155 50  0000 L CNN
F 2 "" V 1830 3200 50  0001 C CNN
F 3 "~" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
$Comp
L lab-rescue:MAX4460ESA+-PASC U?
U 1 1 5C562619
P 5000 2100
AR Path="/5C562619" Ref="U?"  Part="1" 
AR Path="/5C564F10/5C562619" Ref="U?"  Part="1" 
F 0 "U?" H 6100 2487 60  0000 C CNN
F 1 "MAX4460ESA+" H 6100 2381 60  0000 C CNN
F 2 "21-0041B_8" H 6100 2340 60  0001 C CNN
F 3 "" H 5000 2100 60  0000 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C5626CF
P 1600 2700
F 0 "#PWR?" H 1600 2550 50  0001 C CNN
F 1 "+3V3" H 1615 2873 50  0000 C CNN
F 2 "" H 1600 2700 50  0001 C CNN
F 3 "" H 1600 2700 50  0001 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2700 1600 2900
Wire Wire Line
	1600 2900 1900 2900
Wire Wire Line
	1900 2900 1900 2750
Wire Wire Line
	1900 2900 1900 3050
Connection ~ 1900 2900
Wire Wire Line
	1900 3350 1900 3500
Wire Wire Line
	1900 3500 2300 3500
Wire Wire Line
	3200 3500 3200 3350
Wire Wire Line
	3200 3050 3200 2900
Wire Wire Line
	1900 2450 1900 1900
Wire Wire Line
	1900 1900 2300 1900
Wire Wire Line
	3200 2350 3200 2450
$Comp
L power:GND #PWR?
U 1 1 5C562A08
P 3600 3050
F 0 "#PWR?" H 3600 2800 50  0001 C CNN
F 1 "GND" H 3605 2877 50  0000 C CNN
F 2 "" H 3600 3050 50  0001 C CNN
F 3 "" H 3600 3050 50  0001 C CNN
	1    3600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3050 3600 2900
Wire Wire Line
	3600 2900 3200 2900
Connection ~ 3200 2900
Wire Wire Line
	3200 2900 3200 2750
Wire Wire Line
	3200 1900 3200 2050
Wire Wire Line
	3200 1900 3700 1900
Connection ~ 3200 1900
Wire Wire Line
	3700 3500 3200 3500
Connection ~ 3200 3500
Text Label 3700 3500 0    50   ~ 0
WBRIDGE-
Text Label 3700 1900 0    50   ~ 0
WBRIDGE+
Text Label 5000 2300 2    50   ~ 0
WBRIDGE+
Text Label 7200 2300 0    50   ~ 0
WBRIDGE-
Text Label 7200 2100 0    50   ~ 0
INAMPFB
Text Label 5000 2100 2    50   ~ 0
TEMPOUT
$Comp
L Device:R R?
U 1 1 5C5639FE
P 4600 3700
F 0 "R?" H 4670 3746 50  0000 L CNN
F 1 "100k" H 4670 3655 50  0000 L CNN
F 2 "" V 4530 3700 50  0001 C CNN
F 3 "~" H 4600 3700 50  0001 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C563A36
P 4600 4100
F 0 "R?" H 4670 4146 50  0000 L CNN
F 1 "2.7k" H 4670 4055 50  0000 L CNN
F 2 "" V 4530 4100 50  0001 C CNN
F 3 "~" H 4600 4100 50  0001 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3550 4600 3500
Wire Wire Line
	4600 3850 4600 3900
Wire Wire Line
	4600 3900 4800 3900
Connection ~ 4600 3900
Wire Wire Line
	4600 3900 4600 3950
Text Label 4800 3900 0    50   ~ 0
INAMPFB
Text Label 4600 3500 0    50   ~ 0
TEMPOUT
$Comp
L power:GND #PWR?
U 1 1 5C5640C7
P 4600 4750
F 0 "#PWR?" H 4600 4500 50  0001 C CNN
F 1 "GND" H 4605 4577 50  0000 C CNN
F 2 "" H 4600 4750 50  0001 C CNN
F 3 "" H 4600 4750 50  0001 C CNN
	1    4600 4750
	1    0    0    -1  
$EndComp
Text Notes 5200 3600 0    50   ~ 0
Set gain: 1 + R2/R1; R1 + R2 approx. = 100k\nR2 between OUT and FB,\nR1 between FB and GND.
Wire Notes Line
	4400 3300 7100 3300
Wire Notes Line
	7100 3300 7100 5100
Wire Notes Line
	7100 5100 4400 5100
Wire Notes Line
	4400 5100 4400 3300
$Comp
L power:+3V3 #PWR?
U 1 1 5C56452F
P 7700 2000
F 0 "#PWR?" H 7700 1850 50  0001 C CNN
F 1 "+3V3" H 7600 2200 50  0000 C CNN
F 2 "" H 7700 2000 50  0001 C CNN
F 3 "" H 7700 2000 50  0001 C CNN
	1    7700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2000 7700 2200
Wire Wire Line
	7700 2200 7200 2200
$Comp
L power:GND #PWR?
U 1 1 5C564858
P 4500 2400
F 0 "#PWR?" H 4500 2150 50  0001 C CNN
F 1 "GND" H 4505 2227 50  0000 C CNN
F 2 "" H 4500 2400 50  0001 C CNN
F 3 "" H 4500 2400 50  0001 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2200 4500 2200
Wire Wire Line
	4500 2200 4500 2400
Wire Notes Line
	8100 3200 8100 1400
Text Notes 4700 1600 0    50   ~ 0
Instrumentation Amplifier
Text Notes 1500 1600 0    50   ~ 0
Wheatstone Bridge for Pt1000 thermistor.\n
$Comp
L Device:C C?
U 1 1 5C565EBC
P 7700 2500
F 0 "C?" H 7815 2546 50  0000 L CNN
F 1 "0.1u" H 7815 2455 50  0000 L CNN
F 2 "" H 7738 2350 50  0001 C CNN
F 3 "~" H 7700 2500 50  0001 C CNN
	1    7700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2200 7700 2350
Connection ~ 7700 2200
$Comp
L power:GND #PWR?
U 1 1 5C5665E0
P 7700 2800
F 0 "#PWR?" H 7700 2550 50  0001 C CNN
F 1 "GND" H 7705 2627 50  0000 C CNN
F 2 "" H 7700 2800 50  0001 C CNN
F 3 "" H 7700 2800 50  0001 C CNN
	1    7700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2650 7700 2800
Wire Notes Line
	4400 3200 8100 3200
Wire Notes Line
	4400 1400 8100 1400
Wire Notes Line
	4400 1400 4400 3200
Wire Notes Line
	4200 1400 1300 1400
Wire Notes Line
	1300 1400 1300 3700
Wire Notes Line
	1300 3700 4200 3700
Wire Notes Line
	4200 3700 4200 1400
$Comp
L Device:R R?
U 1 1 5C58B777
P 2300 2600
F 0 "R?" H 2370 2646 50  0000 L CNN
F 1 "270k" H 2370 2555 50  0000 L CNN
F 2 "" V 2230 2600 50  0001 C CNN
F 3 "~" H 2300 2600 50  0001 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C58B7A7
P 2300 3200
F 0 "R?" H 2370 3246 50  0000 L CNN
F 1 "270k" H 2370 3155 50  0000 L CNN
F 2 "" V 2230 3200 50  0001 C CNN
F 3 "~" H 2300 3200 50  0001 C CNN
	1    2300 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C58C2D0
P 4600 4500
F 0 "R?" H 4670 4546 50  0000 L CNN
F 1 "820" H 4670 4455 50  0000 L CNN
F 2 "" V 4530 4500 50  0001 C CNN
F 3 "~" H 4600 4500 50  0001 C CNN
	1    4600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4350 4600 4250
Wire Wire Line
	4600 4650 4600 4750
Wire Wire Line
	2300 3500 2300 3350
Connection ~ 2300 3500
Wire Wire Line
	2300 3500 3200 3500
Wire Wire Line
	2300 3050 2300 2900
Wire Wire Line
	1900 2900 2300 2900
Connection ~ 2300 2900
Wire Wire Line
	2300 2900 2300 2750
Wire Wire Line
	2300 2450 2300 1900
Connection ~ 2300 1900
Wire Wire Line
	2300 1900 3200 1900
$EndSCHEMATC
