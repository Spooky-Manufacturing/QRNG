EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "QRNGv1"
Date "2019-10-11"
Rev "1"
Comp "Spooky Manufacturing, LLC"
Comment1 "Single Qubit Entropy Generator"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R2 A1
U 1 1 5DA04217
P 5900 3700
F 0 "A1" H 5900 2419 50  0000 C CNN
F 1 "Arduino_UNO_R2" H 5900 2510 50  0000 C CNN
F 2 "Module:Arduino_UNO_R2" H 6050 2650 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5700 4750 50  0001 C CNN
	1    5900 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_PHOTO R1
U 1 1 5DA04FCF
P 4750 3750
F 0 "R1" H 4950 3700 50  0000 R CNN
F 1 "R_PHOTO" H 5150 3800 50  0000 R CNN
F 2 "" V 4800 3500 50  0001 L CNN
F 3 "~" H 4750 3700 50  0001 C CNN
	1    4750 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_PHOTO R2
U 1 1 5DA05436
P 4200 3050
F 0 "R2" V 4400 3050 50  0000 C CNN
F 1 "R_PHOTO" V 4300 3050 50  0000 C CNN
F 2 "" V 4250 2800 50  0001 L CNN
F 3 "~" H 4200 3000 50  0001 C CNN
	1    4200 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:Laserdiode_1C2A LD1
U 1 1 5DA05A6C
P 3350 3750
F 0 "LD1" V 3346 3662 50  0000 R CNN
F 1 "Laserdiode_1C2A" V 3255 3662 50  0000 R CNN
F 2 "" H 3250 3725 50  0001 C CNN
F 3 "~" H 3380 3550 50  0001 C CNN
	1    3350 3750
	0    1    1    0   
$EndComp
$Comp
L Quantum:BeamSplitter5050-Macro BS1
U 1 1 5DA064DA
P 4200 3750
F 0 "BS1" V 4300 3700 60  0000 L CNN
F 1 "BeamSplitter" V 4400 3500 60  0000 L CNN
F 2 "" H 4200 3750 60  0001 C CNN
F 3 "" H 4200 3750 60  0001 C CNN
	1    4200 3750
	0    1    1    0   
$EndComp
Wire Notes Line
	4200 3100 4200 3750
Wire Notes Line
	4700 3750 3400 3750
Wire Wire Line
	4750 3900 5250 3900
Wire Wire Line
	5250 3900 5250 3700
Wire Wire Line
	5250 3700 5400 3700
Wire Wire Line
	5400 3600 5100 3600
Wire Wire Line
	5100 3600 5100 3050
Wire Wire Line
	5100 3050 4350 3050
Wire Wire Line
	4750 3600 4750 3350
Wire Wire Line
	4750 3350 3900 3350
Wire Wire Line
	3900 3350 3900 3050
Wire Wire Line
	3900 3050 4050 3050
Wire Wire Line
	3900 3050 3900 2600
Wire Wire Line
	3900 2600 5800 2600
Connection ~ 3900 3050
Wire Wire Line
	3350 3450 3350 3050
Wire Wire Line
	3350 3050 3900 3050
Wire Wire Line
	3350 3950 3350 4950
Wire Wire Line
	3350 4950 6550 4950
Wire Wire Line
	6550 4950 6550 4100
Wire Wire Line
	6550 4100 6400 4100
Text Notes 3900 3700 0    50   ~ 0
Path of photons
Text Notes 3000 1900 0    197  ~ 0
For use with firmware version 1.1
$EndSCHEMATC
