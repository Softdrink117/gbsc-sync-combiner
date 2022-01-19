EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "GBS-Control Sync Combiner"
Date "2021-10-28"
Rev "1.0"
Comp "Softdrink"
Comment1 ""
Comment2 ""
Comment3 "Uses existing GBS P9 and P11 JST-XH headers for power and video, respectively"
Comment4 "Basic sync combiner circuit to allow RGBHV format VGA to be ingested as RGBS"
$EndDescr
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles J1
U 1 1 617AF535
P 3850 4150
F 0 "J1" H 3850 5017 50  0000 C CNN
F 1 "DB15_Female_HighDensity_MountingHoles" H 3850 4926 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-15-HD_Female_Horizontal_P2.29x1.98mm_EdgePinOffset3.03mm_Housed_MountingHolesOffset4.94mm" H 2900 4550 50  0001 C CNN
F 3 " ~" H 2900 4550 50  0001 C CNN
	1    3850 4150
	1    0    0    -1  
$EndComp
Text GLabel 3550 3750 0    50   Output ~ 0
Red
Text GLabel 3550 3950 0    50   Output ~ 0
Green
Text GLabel 3550 4150 0    50   Output ~ 0
Blue
$Comp
L power:GND #PWR0101
U 1 1 617B16D7
P 3050 5150
F 0 "#PWR0101" H 3050 4900 50  0001 C CNN
F 1 "GND" H 3055 4977 50  0000 C CNN
F 2 "" H 3050 5150 50  0001 C CNN
F 3 "" H 3050 5150 50  0001 C CNN
	1    3050 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3650 3050 3650
Wire Wire Line
	3050 3650 3050 3850
Wire Wire Line
	3550 3850 3050 3850
Connection ~ 3050 3850
Wire Wire Line
	3050 3850 3050 4050
Wire Wire Line
	3550 4050 3050 4050
Connection ~ 3050 4050
Wire Wire Line
	3550 4450 3050 4450
Connection ~ 3050 4450
Wire Wire Line
	3050 4450 3050 4550
Wire Wire Line
	3550 4550 3050 4550
Connection ~ 3050 4550
Wire Wire Line
	3050 4050 3050 4450
Wire Wire Line
	3050 4550 3050 5150
Wire Wire Line
	3350 5150 3050 5150
Connection ~ 3050 5150
Wire Wire Line
	3850 4850 3850 5150
Wire Wire Line
	3850 5150 3650 5150
Text Notes 2850 5650 0    50   ~ 0
Solder jumper to ground the shield.\nShould normally be closed. Rarely,\nsetups may benefit from opening it.
Text Notes 4650 5500 0    50   ~ 0
Sync combiner circuit adapted from TD-IO:\nhttps://github.com/tdaede/td-io
NoConn ~ 3550 4350
NoConn ~ 4150 3750
NoConn ~ 4150 3950
NoConn ~ 4150 4550
$Comp
L Device:R_Small R1
U 1 1 617C3DD7
P 4750 4000
F 0 "R1" H 4691 3954 50  0000 R CNN
F 1 "10k" H 4691 4045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4750 4000 50  0001 C CNN
F 3 "~" H 4750 4000 50  0001 C CNN
	1    4750 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 617C4DEA
P 5050 4000
F 0 "R2" H 4991 3954 50  0000 R CNN
F 1 "10k" H 4991 4045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5050 4000 50  0001 C CNN
F 3 "~" H 5050 4000 50  0001 C CNN
	1    5050 4000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 617C58E2
P 4900 3750
F 0 "#PWR0102" H 4900 3600 50  0001 C CNN
F 1 "+5V" H 4915 3923 50  0000 C CNN
F 2 "" H 4900 3750 50  0001 C CNN
F 3 "" H 4900 3750 50  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4150 4750 4100
Wire Wire Line
	4750 3900 4750 3750
Wire Wire Line
	4750 3750 4900 3750
Wire Wire Line
	4900 3750 5050 3750
Wire Wire Line
	5050 3750 5050 3900
Connection ~ 4900 3750
Wire Wire Line
	5050 4350 5050 4100
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 617C9602
P 3500 5150
F 0 "JP1" H 3500 5355 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3500 5264 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3500 5150 50  0001 C CNN
F 3 "~" H 3500 5150 50  0001 C CNN
	1    3500 5150
	1    0    0    -1  
$EndComp
Text Label 4150 4150 0    50   ~ 0
HSync
Text Label 4150 4350 0    50   ~ 0
VSync
Wire Wire Line
	5950 4450 5950 4100
Wire Wire Line
	6100 4450 5950 4450
Wire Wire Line
	5800 4250 6100 4250
$Comp
L power:+5V #PWR0103
U 1 1 617C1795
P 5950 4100
F 0 "#PWR0103" H 5950 3950 50  0001 C CNN
F 1 "+5V" H 5965 4273 50  0000 C CNN
F 2 "" H 5950 4100 50  0001 C CNN
F 3 "" H 5950 4100 50  0001 C CNN
	1    5950 4100
	1    0    0    -1  
$EndComp
NoConn ~ 6700 5000
NoConn ~ 5800 4900
Wire Wire Line
	5950 3550 5600 3550
Connection ~ 5950 3550
Wire Wire Line
	5600 3550 5600 3150
Wire Wire Line
	6300 3550 5950 3550
Wire Wire Line
	5950 2550 5600 2550
Wire Wire Line
	5600 2550 5600 2950
$Comp
L Device:C_Small C1
U 1 1 617BBB08
P 5600 3050
F 0 "C1" H 5692 3096 50  0000 L CNN
F 1 "0.1uF" H 5692 3005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5600 3050 50  0001 C CNN
F 3 "~" H 5600 3050 50  0001 C CNN
	1    5600 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 617BB1EB
P 5950 2550
F 0 "#PWR0104" H 5950 2400 50  0001 C CNN
F 1 "+5V" H 5965 2723 50  0000 C CNN
F 2 "" H 5950 2550 50  0001 C CNN
F 3 "" H 5950 2550 50  0001 C CNN
	1    5950 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 617BAE1C
P 5950 3550
F 0 "#PWR0105" H 5950 3300 50  0001 C CNN
F 1 "GND" H 5955 3377 50  0000 C CNN
F 2 "" H 5950 3550 50  0001 C CNN
F 3 "" H 5950 3550 50  0001 C CNN
	1    5950 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U1
U 5 1 617B8B9C
P 6300 3050
F 0 "U1" H 6530 3096 50  0000 L CNN
F 1 "74LS86" H 6530 3005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6300 3050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6300 3050 50  0001 C CNN
	5    6300 3050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U1
U 4 1 617B7787
P 6400 5000
F 0 "U1" H 6400 5325 50  0000 C CNN
F 1 "74LS86" H 6400 5234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6400 5000 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6400 5000 50  0001 C CNN
	4    6400 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U1
U 3 1 617B57BB
P 5500 4900
F 0 "U1" H 5500 5225 50  0000 C CNN
F 1 "74LS86" H 5500 5134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5500 4900 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5500 4900 50  0001 C CNN
	3    5500 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U1
U 2 1 617B48C5
P 6400 4350
F 0 "U1" H 6400 4675 50  0000 C CNN
F 1 "74LS86" H 6400 4584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6400 4350 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6400 4350 50  0001 C CNN
	2    6400 4350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U1
U 1 1 617B3A20
P 5500 4250
F 0 "U1" H 5500 4575 50  0000 C CNN
F 1 "74LS86" H 5500 4484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5500 4250 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5500 4250 50  0001 C CNN
	1    5500 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 617E7B6B
P 8000 3400
F 0 "J2" H 8080 3392 50  0000 L CNN
F 1 "JST-XH" H 8080 3301 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 8000 3400 50  0001 C CNN
F 3 "~" H 8000 3400 50  0001 C CNN
	1    8000 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 617E835C
P 7600 3700
F 0 "#PWR0106" H 7600 3550 50  0001 C CNN
F 1 "+5V" H 7615 3873 50  0000 C CNN
F 2 "" H 7600 3700 50  0001 C CNN
F 3 "" H 7600 3700 50  0001 C CNN
	1    7600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 617E8C2D
P 7600 3200
F 0 "#PWR0107" H 7600 2950 50  0001 C CNN
F 1 "GND" H 7605 3027 50  0000 C CNN
F 2 "" H 7600 3200 50  0001 C CNN
F 3 "" H 7600 3200 50  0001 C CNN
	1    7600 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 617E9E1B
P 8000 4350
F 0 "J3" H 8080 4342 50  0000 L CNN
F 1 "JST-XH" H 8080 4251 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B8B-XH-A_1x08_P2.50mm_Vertical" H 8000 4350 50  0001 C CNN
F 3 "~" H 8000 4350 50  0001 C CNN
	1    8000 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 617EAD9D
P 7550 4650
F 0 "#PWR0108" H 7550 4400 50  0001 C CNN
F 1 "GND" H 7555 4477 50  0000 C CNN
F 2 "" H 7550 4650 50  0001 C CNN
F 3 "" H 7550 4650 50  0001 C CNN
	1    7550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4750 7700 4750
Wire Wire Line
	7700 4750 7700 4650
Wire Wire Line
	7700 4650 7800 4650
Wire Wire Line
	7700 4650 7550 4650
Connection ~ 7700 4650
Text Label 6700 4350 0    50   ~ 0
CSync
Text GLabel 7800 4250 0    50   Output ~ 0
Blue
Text GLabel 7800 4150 0    50   Output ~ 0
Green
Text GLabel 7800 4050 0    50   Output ~ 0
Red
$Comp
L Device:R_Small R3
U 1 1 617F445A
P 7300 4350
F 0 "R3" V 7104 4350 50  0000 C CNN
F 1 "470Ohm" V 7195 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7300 4350 50  0001 C CNN
F 3 "~" H 7300 4350 50  0001 C CNN
	1    7300 4350
	0    1    1    0   
$EndComp
Text Notes 7500 5350 0    50   ~ 0
Not entirely sure what the GBS \nexpects as CSync input voltage.\n470Ohm resistor should be a \nsafe general value, but can be \nadjusted if needed.
NoConn ~ 3550 4250
Wire Wire Line
	4150 4150 4750 4150
Wire Wire Line
	4750 4150 5200 4150
Connection ~ 4750 4150
Wire Wire Line
	4150 4350 5050 4350
Wire Wire Line
	5050 4350 5200 4350
Connection ~ 5050 4350
Wire Notes Line
	4650 5300 4650 2250
Wire Notes Line
	4650 2250 6950 2250
Wire Notes Line
	6950 2250 6950 5300
Wire Notes Line
	6950 5300 4650 5300
Wire Wire Line
	6700 4350 7200 4350
Wire Wire Line
	5950 2550 6300 2550
Connection ~ 5950 2550
$Comp
L Mechanical:MountingHole H2
U 1 1 618A6908
P 4350 5200
F 0 "H2" H 4450 5200 50  0001 L CNN
F 1 "MountingHole" H 4450 5155 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4350 5200 50  0001 C CNN
F 3 "~" H 4350 5200 50  0001 C CNN
	1    4350 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 618A8867
P 4350 2100
F 0 "H1" H 4450 2100 50  0001 L CNN
F 1 "MountingHole" H 4450 2055 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4350 2100 50  0001 C CNN
F 3 "~" H 4350 2100 50  0001 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 618A8B98
P 7150 2100
F 0 "H3" H 7250 2100 50  0001 L CNN
F 1 "MountingHole" H 7250 2055 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7150 2100 50  0001 C CNN
F 3 "~" H 7150 2100 50  0001 C CNN
	1    7150 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 618A904E
P 7150 5200
F 0 "H4" H 7250 5200 50  0001 L CNN
F 1 "MountingHole" H 7250 5155 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7150 5200 50  0001 C CNN
F 3 "~" H 7150 5200 50  0001 C CNN
	1    7150 5200
	1    0    0    -1  
$EndComp
NoConn ~ 7800 4450
Wire Wire Line
	7400 4350 7800 4350
NoConn ~ 7800 4550
Wire Wire Line
	7800 3200 7800 3400
Wire Wire Line
	7600 3200 7800 3200
Wire Wire Line
	7800 3700 7800 3500
Wire Wire Line
	7600 3700 7800 3700
Text Notes 4700 2200 0    50   ~ 0
Use 74HCT86 in actual production
$Comp
L power:+5V #PWR0109
U 1 1 6184FF3B
P 5050 4800
F 0 "#PWR0109" H 5050 4650 50  0001 C CNN
F 1 "+5V" H 5065 4973 50  0000 C CNN
F 2 "" H 5050 4800 50  0001 C CNN
F 3 "" H 5050 4800 50  0001 C CNN
	1    5050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4800 5050 4800
Wire Wire Line
	5200 5000 5200 4800
Connection ~ 5200 4800
$Comp
L power:+5V #PWR0110
U 1 1 61854D1C
P 5950 4900
F 0 "#PWR0110" H 5950 4750 50  0001 C CNN
F 1 "+5V" H 5965 5073 50  0000 C CNN
F 2 "" H 5950 4900 50  0001 C CNN
F 3 "" H 5950 4900 50  0001 C CNN
	1    5950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4900 5950 4900
Wire Wire Line
	6100 5100 6100 4900
Connection ~ 6100 4900
$EndSCHEMATC
