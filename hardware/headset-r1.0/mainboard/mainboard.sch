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
$Descr A4 11693 8268
encoding utf-8
Sheet 1 19
Title "openMixR 4k Headset Mainboard"
Date "2017-02-14"
Rev "1.0"
Comp "David Shah"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2000 2900 1600 1350
U 57BC3A3E
F0 "USB-C I/F and FT2232H JTAG/FIFO" 60
F1 "usb.sch" 60
$EndSheet
$Sheet
S 2000 4550 1600 1300
U 57BECF99
F0 "Cameras" 60
F1 "cameras.sch" 60
$EndSheet
$Sheet
S 4450 4550 2300 1450
U 57C1B879
F0 "A64 SoC Subsystem" 60
F1 "a64.sch" 60
$EndSheet
$Sheet
S 4450 2850 2300 1450
U 57E7E7B6
F0 "Artix-7 FPGA Subsystem" 60
F1 "fpgasys.sch" 60
$EndSheet
$Sheet
S 4500 900  2000 1600
U 57BC8445
F0 "Voltage Regulators and Power Management" 60
F1 "vreg.sch" 60
$EndSheet
$Sheet
S 7050 4550 1950 1400
U 57E89D41
F0 "LCD" 60
F1 "display.sch" 60
$EndSheet
$Sheet
S 7050 2850 1950 1450
U 57E95105
F0 "Sensors and UI" 60
F1 "sensors.sch" 60
$EndSheet
$Comp
L CONN_01X01 P101
U 1 1 57EE3C1C
P 8450 800
F 0 "P101" H 8450 900 50  0000 C CNN
F 1 "GND" V 8550 800 50  0000 C CNN
F 2 "Custom Parts:M3_HOLE" H 8450 800 50  0001 C CNN
F 3 "" H 8450 800 50  0000 C CNN
	1    8450 800 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P102
U 1 1 57EE3C73
P 8450 1000
F 0 "P102" H 8450 1100 50  0000 C CNN
F 1 "GND" V 8550 1000 50  0000 C CNN
F 2 "Custom Parts:M3_HOLE" H 8450 1000 50  0001 C CNN
F 3 "" H 8450 1000 50  0000 C CNN
	1    8450 1000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P103
U 1 1 57EE3C95
P 8450 1200
F 0 "P103" H 8450 1300 50  0000 C CNN
F 1 "GND" V 8550 1200 50  0000 C CNN
F 2 "Custom Parts:M3_HOLE" H 8450 1200 50  0001 C CNN
F 3 "" H 8450 1200 50  0000 C CNN
	1    8450 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P104
U 1 1 57EE3CB2
P 8450 1400
F 0 "P104" H 8450 1500 50  0000 C CNN
F 1 "GND" V 8550 1400 50  0000 C CNN
F 2 "Custom Parts:M3_HOLE" H 8450 1400 50  0001 C CNN
F 3 "" H 8450 1400 50  0000 C CNN
	1    8450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 800  8100 800 
Wire Wire Line
	8100 800  8100 1550
Wire Wire Line
	8250 1000 8100 1000
Connection ~ 8100 1000
Wire Wire Line
	8250 1200 8100 1200
Connection ~ 8100 1200
Wire Wire Line
	8250 1400 8100 1400
Connection ~ 8100 1400
$Comp
L GND #PWR01
U 1 1 57EE3D4D
P 8100 1550
F 0 "#PWR01" H 8100 1300 50  0001 C CNN
F 1 "GND" H 8100 1400 50  0000 C CNN
F 2 "" H 8100 1550 50  0000 C CNN
F 3 "" H 8100 1550 50  0000 C CNN
	1    8100 1550
	1    0    0    -1  
$EndComp
Text Notes 8050 650  0    60   ~ 0
Mounting holes
$EndSCHEMATC
