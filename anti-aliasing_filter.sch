EESchema Schematic File Version 2
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
LIBS:special
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
LIBS:wheelerlab
LIBS:anti-aliasing_filter-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Anti-aliasing filter"
Date "22 sep 2014"
Rev "v1.0"
Comp "Ryan Fobel"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_4 P1
U 1 1 541C44CB
P 1000 1350
F 0 "P1" V 950 1350 50  0000 C CNN
F 1 "CONN_4" V 1050 1350 50  0000 C CNN
F 2 "" H 1000 1350 60  0000 C CNN
F 3 "" H 1000 1350 60  0000 C CNN
	1    1000 1350
	-1   0    0    1   
$EndComp
$Comp
L CONN_3 P2
U 1 1 541C44DA
P 1000 1750
F 0 "P2" V 950 1750 50  0000 C CNN
F 1 "CONN_3" V 1050 1750 40  0000 C CNN
F 2 "" H 1000 1750 60  0000 C CNN
F 3 "" H 1000 1750 60  0000 C CNN
	1    1000 1750
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 541C44E9
P 1600 1750
F 0 "R1" V 1680 1750 40  0000 C CNN
F 1 "3.65k" V 1607 1751 40  0000 C CNN
F 2 "~" V 1530 1750 30  0000 C CNN
F 3 "~" H 1600 1750 30  0000 C CNN
	1    1600 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 541C4500
P 2100 1750
F 0 "R2" V 2180 1750 40  0000 C CNN
F 1 "8.66k" V 2107 1751 40  0000 C CNN
F 2 "~" V 2030 1750 30  0000 C CNN
F 3 "~" H 2100 1750 30  0000 C CNN
	1    2100 1750
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 541C4512
P 2350 1950
F 0 "C2" H 2350 2050 40  0000 L CNN
F 1 "330pF" H 2356 1865 40  0000 L CNN
F 2 "~" H 2388 1800 30  0000 C CNN
F 3 "~" H 2350 1950 60  0000 C CNN
	1    2350 1950
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 541C4521
P 2100 1450
F 0 "C1" H 2100 1550 40  0000 L CNN
F 1 "0.0027uF" H 2106 1365 40  0000 L CNN
F 2 "~" H 2138 1300 30  0000 C CNN
F 3 "~" H 2100 1450 60  0000 C CNN
	1    2100 1450
	0    -1   -1   0   
$EndComp
Text GLabel 1350 1200 2    60   Input ~ 0
+5V
Text GLabel 1350 1300 2    60   Input ~ 0
GND
NoConn ~ 1350 1500
NoConn ~ 1350 1650
Text GLabel 3950 1550 1    60   Input ~ 0
+5V
Text GLabel 2650 1850 3    60   Input ~ 0
GND
Text GLabel 2350 2150 0    60   Input ~ 0
GND
Text Notes 950  950  0    60   ~ 0
4th-order Butterworth lowpass filter (fc=30kHz)
$Comp
L MCP6022 IC1
U 1 1 54203D0F
P 3300 1700
F 0 "IC1" H 3300 2050 60  0000 C CNN
F 1 "MCP6022" H 3300 1350 60  0000 C CNN
F 2 "~" H 3300 1700 60  0000 C CNN
F 3 "~" H 3300 1700 60  0000 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54204126
P 3250 1200
F 0 "R3" V 3330 1200 40  0000 C CNN
F 1 "13.3k" V 3257 1201 40  0000 C CNN
F 2 "~" V 3180 1200 30  0000 C CNN
F 3 "~" H 3250 1200 30  0000 C CNN
	1    3250 1200
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 54204134
P 3750 1200
F 0 "R4" V 3830 1200 40  0000 C CNN
F 1 "16.2k" V 3757 1201 40  0000 C CNN
F 2 "~" V 3680 1200 30  0000 C CNN
F 3 "~" H 3750 1200 30  0000 C CNN
	1    3750 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1750 1850 1450
Wire Wire Line
	1850 1450 1900 1450
Wire Wire Line
	1350 1300 1350 1400
Wire Wire Line
	2350 1750 2650 1750
Wire Wire Line
	2650 1200 2650 1650
Wire Wire Line
	2300 1450 2650 1450
Connection ~ 2650 1550
Wire Wire Line
	2650 1200 3000 1200
Connection ~ 2650 1450
$Comp
L C C3
U 1 1 54204178
P 3700 950
F 0 "C3" H 3700 1050 40  0000 L CNN
F 1 "390pF" H 3706 865 40  0000 L CNN
F 2 "~" H 3738 800 30  0000 C CNN
F 3 "~" H 3700 950 60  0000 C CNN
	1    3700 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 1200 3500 950 
Wire Wire Line
	3900 950  4250 950 
Wire Wire Line
	4250 950  4250 2400
Wire Wire Line
	4250 1650 3950 1650
Wire Wire Line
	4000 1200 4100 1200
Wire Wire Line
	4100 1200 4100 1850
Wire Wire Line
	4100 1850 3950 1850
Wire Wire Line
	3950 1650 3950 1750
$Comp
L C C4
U 1 1 542041B4
P 4100 2050
F 0 "C4" H 4100 2150 40  0000 L CNN
F 1 "330pF" H 4106 1965 40  0000 L CNN
F 2 "~" H 4138 1900 30  0000 C CNN
F 3 "~" H 4100 2050 60  0000 C CNN
	1    4100 2050
	1    0    0    -1  
$EndComp
Text GLabel 4100 2250 0    60   Input ~ 0
GND
Wire Wire Line
	4250 2400 1350 2400
Wire Wire Line
	1350 2400 1350 1850
Connection ~ 4250 1650
$EndSCHEMATC
