opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_beginCount
	FNCALL	_main,_dispHeader
	FNCALL	_dispHeader,___awdiv
	FNCALL	_dispHeader,___awmod
	FNCALL	_dispHeader,_dataCtrl
	FNCALL	_dispHeader,_dispSTR
	FNCALL	_dispHeader,_initLCD
	FNCALL	_dispHeader,_instCtrl
	FNCALL	_initLCD,_instCtrl
	FNCALL	_dispSTR,_dataCtrl
	FNCALL	_beginCount,_DAVBL
	FNCALL	_beginCount,___awdiv
	FNCALL	_beginCount,___awmod
	FNCALL	_beginCount,_dataCtrl
	FNCALL	_beginCount,_delay
	FNCALL	_beginCount,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	FNCALL	_ISR,_toggleFlag
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	dispHeader@F1116
	global	_flagPause
	global	_seconds
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	143

;initializer for dispHeader@F1116
	retlw	054h
	retlw	049h
	retlw	04Dh
	retlw	045h
	retlw	03Ah
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	21

;initializer for _flagPause
	retlw	01h
	retlw	0

	line	23

;initializer for _seconds
	retlw	018h
	retlw	0

	global	_count_flag
	global	_dataRead
	global	_dispSec
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RB0
_RB0	set	0x30
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"ShotclockTimer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count_flag:
       ds      2

_dataRead:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_dispSec:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	143
dispHeader@F1116:
       ds      20

psect	dataBANK0
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	21
_flagPause:
       ds      2

psect	dataBANK0
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	23
_seconds:
       ds      2

	file	"ShotclockTimer.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+24)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_dispHeader:	; 0 bytes @ 0x0
?_beginCount:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_DAVBL:	; 0 bytes @ 0x0
?_dispSTR:	; 0 bytes @ 0x0
?_toggleFlag:	; 0 bytes @ 0x0
??_toggleFlag:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
	ds	6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_DAVBL:	; 0 bytes @ 0x0
?_delay:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	DAVBL@DATA
DAVBL@DATA:	; 2 bytes @ 0x0
	global	delay@timer
delay@timer:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
??_instCtrl:	; 0 bytes @ 0x3
??_dataCtrl:	; 0 bytes @ 0x3
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x3
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x3
	ds	1
??_dispSTR:	; 0 bytes @ 0x4
??_initLCD:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	dispSTR@STR
dispSTR@STR:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	dispSTR@i
dispSTR@i:	; 2 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
??_dispHeader:	; 0 bytes @ 0x9
??_beginCount:	; 0 bytes @ 0x9
	global	beginCount@secLSB
beginCount@secLSB:	; 2 bytes @ 0x9
	ds	2
	global	beginCount@secMSB
beginCount@secMSB:	; 2 bytes @ 0xB
	ds	2
	global	dispHeader@header
dispHeader@header:	; 20 bytes @ 0xD
	ds	20
	global	dispHeader@secLSB
dispHeader@secLSB:	; 2 bytes @ 0x21
	ds	2
	global	dispHeader@secMSB
dispHeader@secMSB:	; 2 bytes @ 0x23
	ds	2
??_main:	; 0 bytes @ 0x25
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        24
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     37      63
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    dispSTR@STR	PTR unsigned char  size(1) Largest target is 20
;!		 -> dispHeader@header(BANK0[20]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_dispHeader
;!    _dispHeader->___awdiv
;!    _initLCD->_instCtrl
;!    _dispSTR->_dataCtrl
;!    _beginCount->___awdiv
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    7184
;!                         _beginCount
;!                         _dispHeader
;! ---------------------------------------------------------------------------------
;! (1) _dispHeader                                          28    28      0    3768
;!                                              9 BANK0     28    28      0
;!                            ___awdiv
;!                            ___awmod
;!                           _dataCtrl
;!                            _dispSTR
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _initLCD                                              0     0      0     257
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dispSTR                                              4     4      0     417
;!                                              4 BANK0      4     4      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (1) _beginCount                                           4     4      0    3416
;!                                              9 BANK0      4     4      0
;!                              _DAVBL
;!                            ___awdiv
;!                            ___awmod
;!                           _dataCtrl
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     257
;!                                              3 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _dataCtrl                                             1     1      0     257
;!                                              3 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                3     1      2     226
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4    1603
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     835
;!                                              0 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! (2) _DAVBL                                                2     2      0      34
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  6     6      0       0
;!                                              0 COMMON     6     6      0
;!                         _toggleFlag
;! ---------------------------------------------------------------------------------
;! (6) _toggleFlag                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _beginCount
;!     _DAVBL
;!     ___awdiv
;!     ___awmod
;!     _dataCtrl
;!       _delay
;!     _delay
;!     _instCtrl
;!       _delay
;!   _dispHeader
;!     ___awdiv
;!     ___awmod
;!     _dataCtrl
;!       _delay
;!     _dispSTR
;!       _dataCtrl
;!         _delay
;!     _initLCD
;!       _instCtrl
;!         _delay
;!     _instCtrl
;!       _delay
;!
;! _ISR (ROOT)
;!   _toggleFlag
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     25      3F       5       78.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      49      12        0.0%
;!ABS                  0      0      49       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_beginCount
;;		_dispHeader
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	27
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l1295:	
;ShotclockTimer.c: 29: OPTION_REG = 0x44;
	movlw	(044h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	30
	
l1297:	
;ShotclockTimer.c: 30: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	31
	
l1299:	
;ShotclockTimer.c: 31: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	32
	
l1301:	
;ShotclockTimer.c: 32: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	33
	
l1303:	
;ShotclockTimer.c: 33: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	34
	
l1305:	
;ShotclockTimer.c: 34: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	39
;ShotclockTimer.c: 39: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	40
	
l1307:	
;ShotclockTimer.c: 40: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	41
	
l1309:	
;ShotclockTimer.c: 41: TRISD = 0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	43
	
l1311:	
;ShotclockTimer.c: 43: dispHeader();
	fcall	_dispHeader
	goto	l1313
	line	45
;ShotclockTimer.c: 45: while(1)
	
l59:	
	line	47
	
l1313:	
;ShotclockTimer.c: 46: {
;ShotclockTimer.c: 47: beginCount();
	fcall	_beginCount
	goto	l1313
	line	48
	
l60:	
	line	45
	goto	l1313
	
l61:	
	line	49
	
l62:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_dispHeader

;; *************** function _dispHeader *****************
;; Defined at:
;;		line 140 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  header         20   13[BANK0 ] unsigned char [20]
;;  secMSB          2   35[BANK0 ] int 
;;  secLSB          2   33[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      24       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      28       0       0       0
;;Total ram usage:       28 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_dataCtrl
;;		_dispSTR
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	140
global __ptext1
__ptext1:	;psect for function _dispHeader
psect	text1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	140
	global	__size_of_dispHeader
	__size_of_dispHeader	equ	__end_of_dispHeader-_dispHeader
	
_dispHeader:	
;incstack = 0
	opt	stack 2
; Regs used in _dispHeader: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	142
	
l1245:	
;ShotclockTimer.c: 142: initLCD();
	fcall	_initLCD
	line	143
;ShotclockTimer.c: 143: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	144
	
l1247:	
;ShotclockTimer.c: 144: char header[20] = "TIME:";
	movlw	(dispHeader@header)&0ffh
	movwf	fsr0
	movlw	low(dispHeader@F1116)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispHeader+0)+0
	movf	fsr0,w
	movwf	((??_dispHeader+0)+0+1)
	movlw	20
	movwf	((??_dispHeader+0)+0+2)
u940:
	movf	(??_dispHeader+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_dispHeader+0)+0+3)
	incf	(??_dispHeader+0)+0,f
	movf	((??_dispHeader+0)+0+1),w
	movwf	fsr0
	
	movf	((??_dispHeader+0)+0+3),w
	movwf	indf
	incf	((??_dispHeader+0)+0+1),f
	decfsz	((??_dispHeader+0)+0+2),f
	goto	u940
	line	145
	
l1249:	
;ShotclockTimer.c: 145: dispSTR(header);
	movlw	(dispHeader@header)&0ffh
	fcall	_dispSTR
	line	146
	
l1251:	
;ShotclockTimer.c: 146: dispSec = (seconds%60);
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	movf	(_seconds+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_seconds),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_dispSec+1)
	addwf	(_dispSec+1)
	movf	(0+(?___awmod)),w
	clrf	(_dispSec)
	addwf	(_dispSec)

	line	149
	
l1253:	
;ShotclockTimer.c: 148: int secLSB;
;ShotclockTimer.c: 149: secLSB = dispSec%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(_dispSec+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_dispSec),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(dispHeader@secLSB+1)
	addwf	(dispHeader@secLSB+1)
	movf	(0+(?___awmod)),w
	clrf	(dispHeader@secLSB)
	addwf	(dispHeader@secLSB)

	line	151
	
l1255:	
;ShotclockTimer.c: 150: int secMSB;
;ShotclockTimer.c: 151: secMSB = dispSec/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(_dispSec+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(_dispSec),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(dispHeader@secMSB+1)
	addwf	(dispHeader@secMSB+1)
	movf	(0+(?___awdiv)),w
	clrf	(dispHeader@secMSB)
	addwf	(dispHeader@secMSB)

	line	152
	
l1257:	
;ShotclockTimer.c: 152: secMSB = secMSB%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(dispHeader@secMSB+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(dispHeader@secMSB),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(dispHeader@secMSB+1)
	addwf	(dispHeader@secMSB+1)
	movf	(0+(?___awmod)),w
	clrf	(dispHeader@secMSB)
	addwf	(dispHeader@secMSB)

	line	153
	
l1259:	
;ShotclockTimer.c: 153: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	154
	
l1261:	
;ShotclockTimer.c: 154: dataCtrl(secMSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispHeader@secMSB),w
	addlw	030h
	fcall	_dataCtrl
	line	155
	
l1263:	
;ShotclockTimer.c: 155: dataCtrl(secLSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispHeader@secLSB),w
	addlw	030h
	fcall	_dataCtrl
	line	156
	
l102:	
	return
	opt stack 0
GLOBAL	__end_of_dispHeader
	__end_of_dispHeader:
	signat	_dispHeader,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 121 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	121
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	121
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 2
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	123
	
l1153:	
;ShotclockTimer.c: 123: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	124
;ShotclockTimer.c: 124: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	125
;ShotclockTimer.c: 125: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	126
;ShotclockTimer.c: 126: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	127
;ShotclockTimer.c: 127: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	128
	
l94:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_dispSTR

;; *************** function _dispSTR *****************
;; Defined at:
;;		line 158 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  STR             1    wreg     PTR unsigned char 
;;		 -> dispHeader@header(20), 
;; Auto vars:     Size  Location     Type
;;  STR             1    5[BANK0 ] PTR unsigned char 
;;		 -> dispHeader@header(20), 
;;  i               2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	158
global __ptext3
__ptext3:	;psect for function _dispSTR
psect	text3
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	158
	global	__size_of_dispSTR
	__size_of_dispSTR	equ	__end_of_dispSTR-_dispSTR
	
_dispSTR:	
;incstack = 0
	opt	stack 2
; Regs used in _dispSTR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;dispSTR@STR stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dispSTR@STR)
	line	160
	
l1155:	
;ShotclockTimer.c: 160: for(int i = 0;;i++)
	clrf	(dispSTR@i)
	clrf	(dispSTR@i+1)
	goto	l1157
	line	161
	
l105:	
	line	162
	
l1157:	
;ShotclockTimer.c: 161: {
;ShotclockTimer.c: 162: if(STR[i] != '\0')
	movf	(dispSTR@i),w
	addwf	(dispSTR@STR),w
	movwf	(??_dispSTR+0)+0
	movf	0+(??_dispSTR+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u741
	goto	u740
u741:
	goto	l108
u740:
	line	164
	
l1159:	
;ShotclockTimer.c: 163: {
;ShotclockTimer.c: 164: dataCtrl(STR[i]);
	movf	(dispSTR@i),w
	addwf	(dispSTR@STR),w
	movwf	(??_dispSTR+0)+0
	movf	0+(??_dispSTR+0)+0,w
	movwf	fsr0
	movf	indf,w
	fcall	_dataCtrl
	line	165
;ShotclockTimer.c: 165: }
	goto	l1161
	line	166
	
l106:	
	line	168
;ShotclockTimer.c: 166: else
;ShotclockTimer.c: 167: {
;ShotclockTimer.c: 168: return;
	goto	l108
	line	169
	
l107:	
	line	160
	
l1161:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dispSTR@i),f
	skipnc
	incf	(dispSTR@i+1),f
	movlw	high(01h)
	addwf	(dispSTR@i+1),f
	goto	l1157
	
l109:	
	line	171
	
l108:	
	return
	opt stack 0
GLOBAL	__end_of_dispSTR
	__end_of_dispSTR:
	signat	_dispSTR,4216
	global	_beginCount

;; *************** function _beginCount *****************
;; Defined at:
;;		line 51 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  secMSB          2   11[BANK0 ] int 
;;  secLSB          2    9[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DAVBL
;;		___awdiv
;;		___awmod
;;		_dataCtrl
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	51
global __ptext4
__ptext4:	;psect for function _beginCount
psect	text4
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	51
	global	__size_of_beginCount
	__size_of_beginCount	equ	__end_of_beginCount-_beginCount
	
_beginCount:	
;incstack = 0
	opt	stack 3
; Regs used in _beginCount: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l1265:	
;ShotclockTimer.c: 53: int secLSB;
;ShotclockTimer.c: 54: int secMSB;
;ShotclockTimer.c: 55: for(;seconds >= 0;)
	goto	l1291
	line	56
	
l66:	
	line	57
	
l1267:	
;ShotclockTimer.c: 56: {
;ShotclockTimer.c: 57: dispSec = (seconds%60);
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	movf	(_seconds+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_seconds),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_dispSec+1)
	addwf	(_dispSec+1)
	movf	(0+(?___awmod)),w
	clrf	(_dispSec)
	addwf	(_dispSec)

	line	58
;ShotclockTimer.c: 58: secLSB = dispSec%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(_dispSec+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_dispSec),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(beginCount@secLSB+1)
	addwf	(beginCount@secLSB+1)
	movf	(0+(?___awmod)),w
	clrf	(beginCount@secLSB)
	addwf	(beginCount@secLSB)

	line	59
;ShotclockTimer.c: 59: secMSB = dispSec/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(_dispSec+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(_dispSec),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(beginCount@secMSB+1)
	addwf	(beginCount@secMSB+1)
	movf	(0+(?___awdiv)),w
	clrf	(beginCount@secMSB)
	addwf	(beginCount@secMSB)

	line	60
;ShotclockTimer.c: 60: secMSB = secMSB%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(beginCount@secMSB+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(beginCount@secMSB),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(beginCount@secMSB+1)
	addwf	(beginCount@secMSB+1)
	movf	(0+(?___awmod)),w
	clrf	(beginCount@secMSB)
	addwf	(beginCount@secMSB)

	line	61
;ShotclockTimer.c: 61: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	62
;ShotclockTimer.c: 62: dataCtrl(secMSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secMSB),w
	addlw	030h
	fcall	_dataCtrl
	line	63
;ShotclockTimer.c: 63: dataCtrl(secLSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secLSB),w
	addlw	030h
	fcall	_dataCtrl
	line	65
;ShotclockTimer.c: 65: while(flagPause == 1)
	goto	l1285
	
l68:	
	line	67
;ShotclockTimer.c: 66: {
;ShotclockTimer.c: 67: if(RB0 == 1)
	btfss	(48/8),(48)&7	;volatile
	goto	u951
	goto	u950
u951:
	goto	l1285
u950:
	line	69
	
l1269:	
;ShotclockTimer.c: 68: {
;ShotclockTimer.c: 69: DAVBL();
	fcall	_DAVBL
	line	70
	
l1271:	
;ShotclockTimer.c: 70: dispSec = (seconds%60);
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	movf	(_seconds+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_seconds),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_dispSec+1)
	addwf	(_dispSec+1)
	movf	(0+(?___awmod)),w
	clrf	(_dispSec)
	addwf	(_dispSec)

	line	71
	
l1273:	
;ShotclockTimer.c: 71: secLSB = dispSec%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(_dispSec+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_dispSec),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(beginCount@secLSB+1)
	addwf	(beginCount@secLSB+1)
	movf	(0+(?___awmod)),w
	clrf	(beginCount@secLSB)
	addwf	(beginCount@secLSB)

	line	72
	
l1275:	
;ShotclockTimer.c: 72: secMSB = dispSec/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(_dispSec+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(_dispSec),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(beginCount@secMSB+1)
	addwf	(beginCount@secMSB+1)
	movf	(0+(?___awdiv)),w
	clrf	(beginCount@secMSB)
	addwf	(beginCount@secMSB)

	line	73
	
l1277:	
;ShotclockTimer.c: 73: secMSB = secMSB%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(beginCount@secMSB+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(beginCount@secMSB),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(beginCount@secMSB+1)
	addwf	(beginCount@secMSB+1)
	movf	(0+(?___awmod)),w
	clrf	(beginCount@secMSB)
	addwf	(beginCount@secMSB)

	line	74
	
l1279:	
;ShotclockTimer.c: 74: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	75
	
l1281:	
;ShotclockTimer.c: 75: dataCtrl(secMSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secMSB),w
	addlw	030h
	fcall	_dataCtrl
	line	76
	
l1283:	
;ShotclockTimer.c: 76: dataCtrl(secLSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secLSB),w
	addlw	030h
	fcall	_dataCtrl
	goto	l1285
	line	77
	
l69:	
	goto	l1285
	line	78
	
l67:	
	line	65
	
l1285:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_flagPause),w
	iorwf	(_flagPause+1),w
	skipnz
	goto	u961
	goto	u960
u961:
	goto	l68
u960:
	goto	l1287
	
l70:	
	line	80
	
l1287:	
;ShotclockTimer.c: 77: }
;ShotclockTimer.c: 78: }
;ShotclockTimer.c: 80: delay(122);
	movlw	low(07Ah)
	movwf	(delay@timer)
	movlw	high(07Ah)
	movwf	((delay@timer))+1
	fcall	_delay
	line	81
	
l1289:	
;ShotclockTimer.c: 81: seconds--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_seconds),f
	skipnc
	incf	(_seconds+1),f
	movlw	high(-1)
	addwf	(_seconds+1),f
	goto	l1291
	line	55
	
l65:	
	
l1291:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_seconds+1),7
	goto	u971
	goto	u970
u971:
	goto	l1267
u970:
	goto	l1293
	
l71:	
	line	83
	
l1293:	
;ShotclockTimer.c: 82: }
;ShotclockTimer.c: 83: seconds = 24;
	movlw	low(018h)
	movwf	(_seconds)
	movlw	high(018h)
	movwf	((_seconds))+1
	line	84
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_beginCount
	__end_of_beginCount:
	signat	_beginCount,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 111 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_beginCount
;;		_initLCD
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	111
global __ptext5
__ptext5:	;psect for function _instCtrl
psect	text5
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	111
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 3
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
;instCtrl@INST stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@INST)
	line	113
	
l1107:	
;ShotclockTimer.c: 113: PORTC = INST;
	movf	(instCtrl@INST),w
	movwf	(7)	;volatile
	line	114
	
l1109:	
;ShotclockTimer.c: 114: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	115
	
l1111:	
;ShotclockTimer.c: 115: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	116
	
l1113:	
;ShotclockTimer.c: 116: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	117
	
l1115:	
;ShotclockTimer.c: 117: delay(1);
	movlw	low(01h)
	movwf	(delay@timer)
	movlw	high(01h)
	movwf	((delay@timer))+1
	fcall	_delay
	line	118
	
l1117:	
;ShotclockTimer.c: 118: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	119
	
l91:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 130 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_beginCount
;;		_dispHeader
;;		_dispSTR
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	130
global __ptext6
__ptext6:	;psect for function _dataCtrl
psect	text6
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	130
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 2
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@DATA stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@DATA)
	line	132
	
l1119:	
;ShotclockTimer.c: 132: PORTC = DATA;
	movf	(dataCtrl@DATA),w
	movwf	(7)	;volatile
	line	133
	
l1121:	
;ShotclockTimer.c: 133: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	134
	
l1123:	
;ShotclockTimer.c: 134: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	135
	
l1125:	
;ShotclockTimer.c: 135: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	136
	
l1127:	
;ShotclockTimer.c: 136: delay(1);
	movlw	low(01h)
	movwf	(delay@timer)
	movlw	high(01h)
	movwf	((delay@timer))+1
	fcall	_delay
	line	137
	
l1129:	
;ShotclockTimer.c: 137: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	138
	
l97:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 173 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  timer           2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;;		_instCtrl
;;		_dataCtrl
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	173
global __ptext7
__ptext7:	;psect for function _delay
psect	text7
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	173
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 3
; Regs used in _delay: [wreg+status,2]
	line	175
	
l1101:	
;ShotclockTimer.c: 175: while(count_flag < timer)
	goto	l1103
	
l113:	
	goto	l1103
	line	177
;ShotclockTimer.c: 176: {
	
l112:	
	line	175
	
l1103:	
	movf	(_count_flag+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_delay+0)+0
	movf	(delay@timer+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u695
	movf	(delay@timer),w
	subwf	(_count_flag),w
u695:

	skipc
	goto	u691
	goto	u690
u691:
	goto	l1103
u690:
	goto	l1105
	
l114:	
	line	178
	
l1105:	
;ShotclockTimer.c: 177: }
;ShotclockTimer.c: 178: count_flag = 0;
	clrf	(_count_flag)
	clrf	(_count_flag+1)
	line	179
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___awmod
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1207:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1209:	
	btfss	(___awmod@dividend+1),7
	goto	u851
	goto	u850
u851:
	goto	l1215
u850:
	line	15
	
l1211:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1213:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1215
	line	17
	
l347:	
	line	18
	
l1215:	
	btfss	(___awmod@divisor+1),7
	goto	u861
	goto	u860
u861:
	goto	l1219
u860:
	line	19
	
l1217:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1219
	
l348:	
	line	20
	
l1219:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u871
	goto	u870
u871:
	goto	l1237
u870:
	line	21
	
l1221:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1227
	
l351:	
	line	23
	
l1223:	
	movlw	01h
	
u885:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u885
	line	24
	
l1225:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1227
	line	25
	
l350:	
	line	22
	
l1227:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u891
	goto	u890
u891:
	goto	l1223
u890:
	goto	l1229
	
l352:	
	goto	l1229
	line	26
	
l353:	
	line	27
	
l1229:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u905
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u905:
	skipc
	goto	u901
	goto	u900
u901:
	goto	l1233
u900:
	line	28
	
l1231:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1233
	
l354:	
	line	29
	
l1233:	
	movlw	01h
	
u915:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u915
	line	30
	
l1235:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1229
u920:
	goto	l1237
	
l355:	
	goto	l1237
	line	31
	
l349:	
	line	32
	
l1237:	
	movf	(___awmod@sign),w
	skipz
	goto	u930
	goto	l1241
u930:
	line	33
	
l1239:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1241
	
l356:	
	line	34
	
l1241:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l357
	
l1243:	
	line	35
	
l357:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext9
__ptext9:	;psect for function ___awdiv
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1163:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1165:	
	btfss	(___awdiv@divisor+1),7
	goto	u751
	goto	u750
u751:
	goto	l1171
u750:
	line	16
	
l1167:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1169:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1171
	line	18
	
l334:	
	line	19
	
l1171:	
	btfss	(___awdiv@dividend+1),7
	goto	u761
	goto	u760
u761:
	goto	l1177
u760:
	line	20
	
l1173:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1175:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1177
	line	22
	
l335:	
	line	23
	
l1177:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1179:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u771
	goto	u770
u771:
	goto	l1199
u770:
	line	25
	
l1181:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1187
	
l338:	
	line	27
	
l1183:	
	movlw	01h
	
u785:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u785
	line	28
	
l1185:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1187
	line	29
	
l337:	
	line	26
	
l1187:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u791
	goto	u790
u791:
	goto	l1183
u790:
	goto	l1189
	
l339:	
	goto	l1189
	line	30
	
l340:	
	line	31
	
l1189:	
	movlw	01h
	
u805:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u805
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u815
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u815:
	skipc
	goto	u811
	goto	u810
u811:
	goto	l1195
u810:
	line	33
	
l1191:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1193:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1195
	line	35
	
l341:	
	line	36
	
l1195:	
	movlw	01h
	
u825:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u825
	line	37
	
l1197:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l1189
u830:
	goto	l1199
	
l342:	
	goto	l1199
	line	38
	
l336:	
	line	39
	
l1199:	
	movf	(___awdiv@sign),w
	skipz
	goto	u840
	goto	l1203
u840:
	line	40
	
l1201:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1203
	
l343:	
	line	41
	
l1203:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l344
	
l1205:	
	line	42
	
l344:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_DAVBL

;; *************** function _DAVBL *****************
;; Defined at:
;;		line 86 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DATA            2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	86
global __ptext10
__ptext10:	;psect for function _DAVBL
psect	text10
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	86
	global	__size_of_DAVBL
	__size_of_DAVBL	equ	__end_of_DAVBL-_DAVBL
	
_DAVBL:	
;incstack = 0
	opt	stack 4
; Regs used in _DAVBL: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	88
	
l1131:	
;ShotclockTimer.c: 88: int DATA = dataRead;
	movf	(_dataRead+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(DAVBL@DATA+1)
	addwf	(DAVBL@DATA+1)
	movf	(_dataRead),w
	clrf	(DAVBL@DATA)
	addwf	(DAVBL@DATA)

	line	90
;ShotclockTimer.c: 90: switch(DATA)
	goto	l1147
	line	92
;ShotclockTimer.c: 91: {
;ShotclockTimer.c: 92: case 12:
	
l76:	
	line	93
	
l1133:	
;ShotclockTimer.c: 93: seconds += 1;
	movlw	low(01h)
	addwf	(_seconds),f
	skipnc
	incf	(_seconds+1),f
	movlw	high(01h)
	addwf	(_seconds+1),f
	line	94
	
l1135:	
;ShotclockTimer.c: 94: if(seconds > 24)
	movf	(_seconds+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u705
	movlw	low(019h)
	subwf	(_seconds),w
u705:

	skipc
	goto	u701
	goto	u700
u701:
	goto	l78
u700:
	line	95
	
l1137:	
;ShotclockTimer.c: 95: {seconds = 0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_seconds)
	clrf	(_seconds+1)
	goto	l78
	
l77:	
	line	96
;ShotclockTimer.c: 96: while(RB0 = 1)
	goto	l78
	
l79:	
	line	97
;ShotclockTimer.c: 97: {}
	
l78:	
	line	96
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	btfsc	(48/8),(48)&7	;volatile
	goto	u711
	goto	u710
u711:
	goto	l78
u710:
	goto	l88
	
l80:	
	line	98
;ShotclockTimer.c: 98: break;
	goto	l88
	line	99
;ShotclockTimer.c: 99: case 14:
	
l82:	
	line	100
	
l1139:	
;ShotclockTimer.c: 100: seconds -= 1;
	movlw	low(-1)
	addwf	(_seconds),f
	skipnc
	incf	(_seconds+1),f
	movlw	high(-1)
	addwf	(_seconds+1),f
	line	101
	
l1141:	
;ShotclockTimer.c: 101: if(seconds < 0)
	btfss	(_seconds+1),7
	goto	u721
	goto	u720
u721:
	goto	l84
u720:
	line	102
	
l1143:	
;ShotclockTimer.c: 102: {seconds = 24;}
	movlw	low(018h)
	movwf	(_seconds)
	movlw	high(018h)
	movwf	((_seconds))+1
	goto	l84
	
l83:	
	line	103
;ShotclockTimer.c: 103: while(RB0 = 1)
	goto	l84
	
l85:	
	line	104
;ShotclockTimer.c: 104: {}
	
l84:	
	line	103
	bsf	(48/8),(48)&7	;volatile
	btfsc	(48/8),(48)&7	;volatile
	goto	u731
	goto	u730
u731:
	goto	l84
u730:
	goto	l88
	
l86:	
	line	105
;ShotclockTimer.c: 105: break;
	goto	l88
	line	106
;ShotclockTimer.c: 106: default:
	
l87:	
	line	107
;ShotclockTimer.c: 107: break;
	goto	l88
	line	108
	
l1145:	
;ShotclockTimer.c: 108: }
	goto	l88
	line	90
	
l75:	
	
l1147:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (DAVBL@DATA+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1335
	goto	l88
	opt asmopt_on
	
l1335:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 12 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (DAVBL@DATA),w
	opt asmopt_off
	xorlw	12^0	; case 12
	skipnz
	goto	l1133
	xorlw	14^12	; case 14
	skipnz
	goto	l1139
	goto	l88
	opt asmopt_on

	line	108
	
l81:	
	line	109
	
l88:	
	return
	opt stack 0
GLOBAL	__end_of_DAVBL
	__end_of_DAVBL:
	signat	_DAVBL,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 182 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_toggleFlag
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	182
global __ptext11
__ptext11:	;psect for function _ISR
psect	text11
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	182
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text11
	line	184
	
i1l1065:	
;ShotclockTimer.c: 184: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	185
;ShotclockTimer.c: 185: if(INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l118
u66_20:
	line	187
	
i1l1067:	
;ShotclockTimer.c: 186: {
;ShotclockTimer.c: 187: dataRead = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	movwf	(_dataRead)
	movf	1+(??_ISR+0)+0,w
	movwf	(_dataRead+1)
	line	188
	
i1l1069:	
;ShotclockTimer.c: 188: if(dataRead == 13)
	movlw	0Dh
	xorwf	(_dataRead),w
	iorwf	(_dataRead+1),w
	skipz
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l1073
u67_20:
	line	190
	
i1l1071:	
;ShotclockTimer.c: 189: {
;ShotclockTimer.c: 190: toggleFlag();
	fcall	_toggleFlag
	goto	i1l1073
	line	191
	
i1l119:	
	line	193
	
i1l1073:	
;ShotclockTimer.c: 191: }
;ShotclockTimer.c: 193: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	194
;ShotclockTimer.c: 194: }
	goto	i1l1079
	line	195
	
i1l118:	
;ShotclockTimer.c: 195: else if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l1079
u68_20:
	line	197
	
i1l1075:	
;ShotclockTimer.c: 196: {
;ShotclockTimer.c: 197: count_flag++;
	movlw	low(01h)
	addwf	(_count_flag),f
	skipnc
	incf	(_count_flag+1),f
	movlw	high(01h)
	addwf	(_count_flag+1),f
	line	198
	
i1l1077:	
;ShotclockTimer.c: 198: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l1079
	line	199
	
i1l121:	
	goto	i1l1079
	line	200
	
i1l120:	
	
i1l1079:	
;ShotclockTimer.c: 199: }
;ShotclockTimer.c: 200: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	201
	
i1l122:	
	movf	(??_ISR+5),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_toggleFlag

;; *************** function _toggleFlag *****************
;; Defined at:
;;		line 203 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	203
global __ptext12
__ptext12:	;psect for function _toggleFlag
psect	text12
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	203
	global	__size_of_toggleFlag
	__size_of_toggleFlag	equ	__end_of_toggleFlag-_toggleFlag
	
_toggleFlag:	
;incstack = 0
	opt	stack 2
; Regs used in _toggleFlag: [wreg+status,2+status,0]
	line	205
	
i1l1037:	
;ShotclockTimer.c: 205: if(flagPause == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_flagPause+1)),w
	iorwf	((_flagPause)),w
	skipz
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l1041
u64_20:
	line	206
	
i1l1039:	
;ShotclockTimer.c: 206: flagPause = 1;
	movlw	low(01h)
	movwf	(_flagPause)
	movlw	high(01h)
	movwf	((_flagPause))+1
	goto	i1l128
	line	208
	
i1l125:	
	
i1l1041:	
;ShotclockTimer.c: 208: else if(flagPause == 1)
	movlw	01h
	xorwf	(_flagPause),w
	iorwf	(_flagPause+1),w
	skipz
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l128
u65_20:
	line	209
	
i1l1043:	
;ShotclockTimer.c: 209: flagPause = 0;
	clrf	(_flagPause)
	clrf	(_flagPause+1)
	goto	i1l128
	
i1l127:	
	goto	i1l128
	line	210
	
i1l126:	
	
i1l128:	
	return
	opt stack 0
GLOBAL	__end_of_toggleFlag
	__end_of_toggleFlag:
	signat	_toggleFlag,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
