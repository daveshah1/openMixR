EESchema Schematic File Version 2
LIBS:mainboard-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:mainboard-parts
LIBS:old-parts
LIBS:fmcboard
LIBS:customconn
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 19 19
Title "openMixR 4k Headset Mainboard"
Date "2017-02-14"
Rev "1.0"
Comp "David Shah"
Comment1 "CONFIDENTIAL"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MPU9250 U1901
U 1 1 57E96E49
P 12800 3700
F 0 "U1901" H 12800 3750 60  0000 C CNN
F 1 "MPU9250" H 12800 3650 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-24-1EP_3x3mm_Pitch0.4mm" H 12800 3700 60  0001 C CNN
F 3 "" H 12800 3700 60  0001 C CNN
	1    12800 3700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0294
U 1 1 57E96EC6
P 11650 2500
F 0 "#PWR0294" H 11650 2350 50  0001 C CNN
F 1 "+3.3V" H 11650 2640 50  0000 C CNN
F 2 "" H 11650 2500 50  0000 C CNN
F 3 "" H 11650 2500 50  0000 C CNN
	1    11650 2500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1902
U 1 1 57E96EF1
P 11400 2700
F 0 "C1902" H 11410 2770 50  0000 L CNN
F 1 "10n" H 11410 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0201" H 11400 2700 50  0001 C CNN
F 3 "" H 11400 2700 50  0000 C CNN
	1    11400 2700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1901
U 1 1 57E96F27
P 11150 2700
F 0 "C1901" H 11160 2770 50  0000 L CNN
F 1 "100n" H 11160 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 11150 2700 50  0001 C CNN
F 3 "" H 11150 2700 50  0000 C CNN
	1    11150 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0295
U 1 1 57E96FAB
P 11150 2900
F 0 "#PWR0295" H 11150 2650 50  0001 C CNN
F 1 "GND" H 11150 2750 50  0000 C CNN
F 2 "" H 11150 2900 50  0000 C CNN
F 3 "" H 11150 2900 50  0000 C CNN
	1    11150 2900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1903
U 1 1 57E97015
P 11400 3000
F 0 "C1903" H 11410 3070 50  0000 L CNN
F 1 "100n" H 11410 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 11400 3000 50  0001 C CNN
F 3 "" H 11400 3000 50  0000 C CNN
	1    11400 3000
	1    0    0    -1  
$EndComp
Text GLabel 10750 3500 0    47   Input ~ 0
MPU_~CS
Text GLabel 10750 3600 0    47   Output ~ 0
MPU_MISO
Text GLabel 10750 3700 0    47   Input ~ 0
MPU_MOSI
Text GLabel 10750 3800 0    47   Input ~ 0
MPU_SCLK
Text GLabel 10750 3900 0    47   Input ~ 0
MPU_FSYNC
Text GLabel 10750 4000 0    47   Output ~ 0
MPU_~INT
$Comp
L R_Small R1902
U 1 1 57E99082
P 11100 3300
F 0 "R1902" H 11130 3320 50  0000 L CNN
F 1 "100k" H 11130 3260 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 11100 3300 50  0001 C CNN
F 3 "" H 11100 3300 50  0000 C CNN
	1    11100 3300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1901
U 1 1 57E990F1
P 10850 3300
F 0 "R1901" H 10880 3320 50  0000 L CNN
F 1 "100k" H 10880 3260 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 10850 3300 50  0001 C CNN
F 3 "" H 10850 3300 50  0000 C CNN
	1    10850 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0296
U 1 1 57E99AFC
P 11650 4450
F 0 "#PWR0296" H 11650 4200 50  0001 C CNN
F 1 "GND" H 11650 4300 50  0000 C CNN
F 2 "" H 11650 4450 50  0000 C CNN
F 3 "" H 11650 4450 50  0000 C CNN
	1    11650 4450
	1    0    0    -1  
$EndComp
NoConn ~ 11800 4400
$Comp
L +3.3V #PWR0297
U 1 1 57E9A4A0
P 13950 3300
F 0 "#PWR0297" H 13950 3150 50  0001 C CNN
F 1 "+3.3V" H 13950 3440 50  0000 C CNN
F 2 "" H 13950 3300 50  0000 C CNN
F 3 "" H 13950 3300 50  0000 C CNN
	1    13950 3300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0298
U 1 1 57E9A4E8
P 13950 3500
F 0 "#PWR0298" H 13950 3250 50  0001 C CNN
F 1 "GND" H 13950 3350 50  0000 C CNN
F 2 "" H 13950 3500 50  0000 C CNN
F 3 "" H 13950 3500 50  0000 C CNN
	1    13950 3500
	0    -1   -1   0   
$EndComp
NoConn ~ 13800 3000
NoConn ~ 13800 3100
$Comp
L SW_PUSH_SHIELD SW1901
U 1 1 57E9C3AE
P 8750 3100
F 0 "SW1901" H 8750 3000 47  0000 C CNN
F 1 "PTS645VM83" H 8750 3250 47  0000 C CNN
F 2 "Custom Parts:PTS645VM83" H 8750 3100 47  0001 C CNN
F 3 "" H 8750 3100 47  0000 C CNN
	1    8750 3100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SHIELD SW1902
U 1 1 57E9C46D
P 8750 3500
F 0 "SW1902" H 8750 3400 47  0000 C CNN
F 1 "PTS645VM83" H 8750 3650 47  0000 C CNN
F 2 "Custom Parts:PTS645VM83" H 8750 3500 47  0001 C CNN
F 3 "" H 8750 3500 47  0000 C CNN
	1    8750 3500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SHIELD SW1903
U 1 1 57E9C4D5
P 8750 3900
F 0 "SW1903" H 8750 3800 47  0000 C CNN
F 1 "PTS645VM83" H 8750 4050 47  0000 C CNN
F 2 "Custom Parts:PTS645VM83" H 8750 3900 47  0001 C CNN
F 3 "" H 8750 3900 47  0000 C CNN
	1    8750 3900
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SHIELD SW1904
U 1 1 57E9C56B
P 8750 4300
F 0 "SW1904" H 8750 4200 47  0000 C CNN
F 1 "PTS645VM83" H 8750 4450 47  0000 C CNN
F 2 "Custom Parts:PTS645VM83" H 8750 4300 47  0001 C CNN
F 3 "" H 8750 4300 47  0000 C CNN
	1    8750 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0299
U 1 1 57E9CF4D
P 9250 6100
F 0 "#PWR0299" H 9250 5850 50  0001 C CNN
F 1 "GND" H 9250 5950 50  0000 C CNN
F 2 "" H 9250 6100 50  0000 C CNN
F 3 "" H 9250 6100 50  0000 C CNN
	1    9250 6100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SHIELD SW1905
U 1 1 57E9D1D5
P 8750 4700
F 0 "SW1905" H 8750 4600 47  0000 C CNN
F 1 "PTS645VM83" H 8750 4850 47  0000 C CNN
F 2 "Custom Parts:PTS645VM83" H 8750 4700 47  0001 C CNN
F 3 "" H 8750 4700 47  0000 C CNN
	1    8750 4700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SHIELD SW1906
U 1 1 57E9D22D
P 8750 5100
F 0 "SW1906" H 8750 5000 47  0000 C CNN
F 1 "PTS645VM83" H 8750 5250 47  0000 C CNN
F 2 "Custom Parts:PTS645VM83" H 8750 5100 47  0001 C CNN
F 3 "" H 8750 5100 47  0000 C CNN
	1    8750 5100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SHIELD SW1907
U 1 1 57E9D2E1
P 8750 5500
F 0 "SW1907" H 8750 5400 47  0000 C CNN
F 1 "PTS645VM83" H 8750 5650 47  0000 C CNN
F 2 "Custom Parts:PTS645VM83" H 8750 5500 47  0001 C CNN
F 3 "" H 8750 5500 47  0000 C CNN
	1    8750 5500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SHIELD SW1908
U 1 1 57E9D368
P 8750 5900
F 0 "SW1908" H 8750 5800 47  0000 C CNN
F 1 "PTS645VM83" H 8750 6050 47  0000 C CNN
F 2 "Custom Parts:PTS645VM83" H 8750 5900 47  0001 C CNN
F 3 "" H 8750 5900 47  0000 C CNN
	1    8750 5900
	1    0    0    -1  
$EndComp
$Comp
L R_PACK4 RP1902
U 1 1 57E9DA19
P 7900 2750
F 0 "RP1902" H 7900 3200 50  0000 C CNN
F 1 "47k" H 7900 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0402" H 7900 2750 50  0001 C CNN
F 3 "" H 7900 2750 50  0000 C CNN
	1    7900 2750
	0    1    -1   0   
$EndComp
$Comp
L R_PACK4 RP1901
U 1 1 57E9DB26
P 7650 2750
F 0 "RP1901" H 7650 3200 50  0000 C CNN
F 1 "47k" H 7650 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0402" H 7650 2750 50  0001 C CNN
F 3 "" H 7650 2750 50  0000 C CNN
	1    7650 2750
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR0300
U 1 1 588BAA94
P 7300 2300
F 0 "#PWR0300" H 7300 2150 50  0001 C CNN
F 1 "+3.3V" H 7300 2440 50  0000 C CNN
F 2 "" H 7300 2300 50  0000 C CNN
F 3 "" H 7300 2300 50  0000 C CNN
	1    7300 2300
	1    0    0    -1  
$EndComp
$Comp
L 74LS165 U1902
U 1 1 588BB5A8
P 4700 4100
F 0 "U1902" H 4850 4050 50  0000 C CNN
F 1 "74HC165PW" H 4850 3850 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 4700 4100 50  0001 C CNN
F 3 "" H 4700 4100 50  0000 C CNN
	1    4700 4100
	-1   0    0    -1  
$EndComp
NoConn ~ 4000 3700
$Comp
L GND #PWR0301
U 1 1 588BBCA1
P 5000 5050
F 0 "#PWR0301" H 5000 4800 50  0001 C CNN
F 1 "GND" H 5000 4900 50  0000 C CNN
F 2 "" H 5000 5050 50  0000 C CNN
F 3 "" H 5000 5050 50  0000 C CNN
	1    5000 5050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0302
U 1 1 588BBE8F
P 5000 2900
F 0 "#PWR0302" H 5000 2750 50  0001 C CNN
F 1 "+3.3V" H 5000 3040 50  0000 C CNN
F 2 "" H 5000 2900 50  0000 C CNN
F 3 "" H 5000 2900 50  0000 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 2500 11650 3100
Wire Wire Line
	11650 3100 11800 3100
Wire Wire Line
	11800 3000 11650 3000
Connection ~ 11650 3000
Wire Wire Line
	11400 2550 11400 2600
Wire Wire Line
	10850 2550 11650 2550
Connection ~ 11650 2550
Wire Wire Line
	11150 2600 11150 2550
Connection ~ 11400 2550
Wire Wire Line
	11150 2800 11150 2900
Wire Wire Line
	11150 2850 11400 2850
Wire Wire Line
	11400 2800 11400 2900
Connection ~ 11150 2850
Connection ~ 11400 2850
Wire Wire Line
	11400 3100 11400 3300
Wire Wire Line
	11400 3300 11800 3300
Wire Wire Line
	10750 3500 11800 3500
Wire Wire Line
	10750 4000 11800 4000
Wire Wire Line
	11800 3900 10750 3900
Wire Wire Line
	10750 3800 11800 3800
Wire Wire Line
	11800 3700 10750 3700
Wire Wire Line
	10750 3600 11800 3600
Wire Wire Line
	10850 3400 10850 3500
Connection ~ 10850 3500
Wire Wire Line
	11100 3400 11100 4000
Connection ~ 11100 4000
Wire Wire Line
	11100 3200 11100 3150
Wire Wire Line
	11100 3150 10850 3150
Wire Wire Line
	10850 2550 10850 3200
Connection ~ 11150 2550
Connection ~ 10850 3150
Wire Wire Line
	11650 4450 11650 4300
Wire Wire Line
	11650 4300 11800 4300
Wire Wire Line
	13950 3300 13800 3300
Wire Wire Line
	13950 3500 13800 3500
Wire Wire Line
	9250 3100 9250 6100
Wire Wire Line
	9250 3100 9050 3100
Wire Wire Line
	9050 3150 9250 3150
Connection ~ 9250 3150
Wire Wire Line
	9050 3500 9250 3500
Connection ~ 9250 3500
Wire Wire Line
	9250 3550 9050 3550
Connection ~ 9250 3550
Wire Wire Line
	9050 3900 9250 3900
Connection ~ 9250 3900
Wire Wire Line
	9050 3950 9250 3950
Connection ~ 9250 3950
Wire Wire Line
	9050 4300 9250 4300
Connection ~ 9250 4300
Wire Wire Line
	9250 4350 9050 4350
Connection ~ 9250 4350
Wire Wire Line
	9050 4700 9250 4700
Connection ~ 9250 4700
Wire Wire Line
	9250 4750 9050 4750
Connection ~ 9250 4750
Wire Wire Line
	9050 5100 9250 5100
Connection ~ 9250 5100
Wire Wire Line
	9250 5150 9050 5150
Connection ~ 9250 5150
Wire Wire Line
	9050 5500 9250 5500
Connection ~ 9250 5500
Wire Wire Line
	9250 5550 9050 5550
Connection ~ 9250 5550
Wire Wire Line
	9050 5900 9250 5900
Connection ~ 9250 5900
Wire Wire Line
	9250 5950 9050 5950
Connection ~ 9250 5950
Wire Wire Line
	8250 2950 8250 3100
Wire Wire Line
	6650 3100 8450 3100
Wire Wire Line
	8150 2950 8150 3500
Wire Wire Line
	6650 3500 8450 3500
Wire Wire Line
	8050 2950 8050 3900
Wire Wire Line
	6650 3900 8450 3900
Wire Wire Line
	7950 2950 7950 4300
Wire Wire Line
	6650 4300 8450 4300
Wire Wire Line
	6650 4700 8450 4700
Wire Wire Line
	7600 4700 7600 2950
Wire Wire Line
	7500 2950 7500 5100
Wire Wire Line
	6650 5100 8450 5100
Wire Wire Line
	7400 2950 7400 5500
Wire Wire Line
	6650 5500 8450 5500
Wire Wire Line
	6650 5900 8450 5900
Wire Wire Line
	7300 5900 7300 2950
Wire Wire Line
	7300 2300 7300 2550
Wire Wire Line
	7300 2400 8250 2400
Wire Wire Line
	8250 2400 8250 2550
Wire Wire Line
	8150 2550 8150 2400
Connection ~ 8150 2400
Wire Wire Line
	8050 2550 8050 2400
Connection ~ 8050 2400
Wire Wire Line
	7950 2550 7950 2400
Connection ~ 7950 2400
Wire Wire Line
	7600 2550 7600 2400
Connection ~ 7600 2400
Wire Wire Line
	7500 2400 7500 2550
Connection ~ 7500 2400
Wire Wire Line
	7400 2550 7400 2400
Connection ~ 7400 2400
Connection ~ 7300 2400
Connection ~ 8250 3100
Connection ~ 8150 3500
Connection ~ 8050 3900
Connection ~ 7950 4300
Connection ~ 7600 4700
Connection ~ 7500 5100
Connection ~ 7400 5500
Connection ~ 7300 5900
Wire Wire Line
	5000 4750 5000 5050
Wire Wire Line
	5000 2900 5000 3450
Wire Wire Line
	5500 4950 5000 4950
Wire Wire Line
	5500 3500 5500 4950
Wire Wire Line
	5500 4700 5400 4700
Connection ~ 5000 4950
Wire Wire Line
	5500 3500 5400 3500
Connection ~ 5500 4700
Text Label 6650 3100 0    47   ~ 0
BTN1
Text Label 6650 3500 0    47   ~ 0
BTN2
Text Label 6650 3900 0    47   ~ 0
BTN3
Text Label 6650 4300 0    47   ~ 0
BTN4
Text Label 6650 4700 0    47   ~ 0
BTN5
Text Label 6650 5100 0    47   ~ 0
BTN6
Text Label 6650 5500 0    47   ~ 0
BTN7
Text Label 6650 5900 0    47   ~ 0
BTN8
Wire Wire Line
	5400 3900 6000 3900
Wire Wire Line
	5400 3800 6000 3800
Wire Wire Line
	5400 3700 6000 3700
Wire Wire Line
	5400 3600 6000 3600
Wire Wire Line
	5400 4300 6000 4300
Wire Wire Line
	5400 4200 6000 4200
Wire Wire Line
	5400 4100 6000 4100
Wire Wire Line
	5400 4000 6000 4000
Text Label 6000 3900 2    47   ~ 0
BTN1
Text Label 6000 3800 2    47   ~ 0
BTN2
Text Label 6000 3700 2    47   ~ 0
BTN3
Text Label 6000 3600 2    47   ~ 0
BTN4
Text Label 6000 4300 2    47   ~ 0
BTN5
Text Label 6000 4200 2    47   ~ 0
BTN6
Text Label 6000 4100 2    47   ~ 0
BTN7
Text Label 6000 4000 2    47   ~ 0
BTN8
Text GLabel 5900 4450 2    47   Input ~ 0
BTN_~LD
Wire Wire Line
	5900 4450 5400 4450
Text GLabel 5900 4600 2    47   Input ~ 0
BTN_CLK
Wire Wire Line
	5900 4600 5400 4600
Text GLabel 3850 3600 0    47   Output ~ 0
BTN_MISO
Wire Wire Line
	3850 3600 4000 3600
$Comp
L C_Small C1904
U 1 1 588BEE0F
P 4800 3100
F 0 "C1904" H 4810 3170 50  0000 L CNN
F 1 "100n" H 4810 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4800 3100 50  0001 C CNN
F 3 "" H 4800 3100 50  0000 C CNN
	1    4800 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3100 5000 3100
Connection ~ 5000 3100
$Comp
L GND #PWR0303
U 1 1 588BEFF8
P 4600 3100
F 0 "#PWR0303" H 4600 2850 50  0001 C CNN
F 1 "GND" H 4600 2950 50  0000 C CNN
F 2 "" H 4600 3100 50  0000 C CNN
F 3 "" H 4600 3100 50  0000 C CNN
	1    4600 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3100 4700 3100
$Comp
L LED_RGB D1901
U 1 1 589F69D8
P 12000 6000
F 0 "D1901" H 12000 6370 50  0000 C CNN
F 1 "QBLP679E-RGB" H 12000 5650 50  0000 C CNN
F 2 "Custom Parts:LED_RGB_5050" H 12000 5950 50  0001 C CNN
F 3 "" H 12000 5950 50  0000 C CNN
	1    12000 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0304
U 1 1 589F6A50
P 11500 6500
F 0 "#PWR0304" H 11500 6250 50  0001 C CNN
F 1 "GND" H 11500 6350 50  0000 C CNN
F 2 "" H 11500 6500 50  0000 C CNN
F 3 "" H 11500 6500 50  0000 C CNN
	1    11500 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11500 6500 11500 5800
Wire Wire Line
	11500 5800 11800 5800
Wire Wire Line
	11800 6000 11500 6000
Connection ~ 11500 6000
Wire Wire Line
	11500 6200 11800 6200
Connection ~ 11500 6200
$Comp
L R_Small R1903
U 1 1 589F6C68
P 12500 5800
F 0 "R1903" H 12530 5820 50  0000 L CNN
F 1 "249" H 12530 5760 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 12500 5800 50  0001 C CNN
F 3 "" H 12500 5800 50  0000 C CNN
	1    12500 5800
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R1904
U 1 1 589F6E78
P 12500 6000
F 0 "R1904" H 12530 6020 50  0000 L CNN
F 1 "205" H 12530 5960 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 12500 6000 50  0001 C CNN
F 3 "" H 12500 6000 50  0000 C CNN
	1    12500 6000
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R1905
U 1 1 589F6ECB
P 12500 6200
F 0 "R1905" H 12530 6220 50  0000 L CNN
F 1 "205" H 12530 6160 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 12500 6200 50  0001 C CNN
F 3 "" H 12500 6200 50  0000 C CNN
	1    12500 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12400 6200 12200 6200
Wire Wire Line
	12200 6000 12400 6000
Wire Wire Line
	12400 5800 12200 5800
Text GLabel 12950 5800 2    47   Input ~ 0
LED_R
Text GLabel 12950 6000 2    47   Input ~ 0
LED_G
Text GLabel 12950 6200 2    47   Input ~ 0
LED_B
Wire Wire Line
	12950 6200 12600 6200
Wire Wire Line
	12600 6000 12950 6000
Wire Wire Line
	12950 5800 12600 5800
$EndSCHEMATC
