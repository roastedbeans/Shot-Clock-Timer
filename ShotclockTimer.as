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
	FNCALL	_initLCD,_delay
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
	FNCALL	_DAVBL,_delay
	FNROOT	_main
	FNCALL	_ISR,_toogleFlag
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	dispHeader@F1179
	global	_flagPause
	global	_seconds
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	172

;initializer for dispHeader@F1179
	retlw	053h
	retlw	068h
	retlw	06Fh
	retlw	074h
	retlw	020h
	retlw	043h
	retlw	06Ch
	retlw	06Fh
	retlw	063h
	retlw	06Bh
	retlw	020h
	retlw	054h
	retlw	069h
	retlw	06Dh
	retlw	065h
	retlw	072h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	22

;initializer for _flagPause
	retlw	01h
	retlw	0

	line	24

;initializer for _seconds
	retlw	018h
	retlw	0

	global	_count_flag
	global	_dataRead
	global	_dispSec
	global	_newSeconds
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
	global	_RA0
_RA0	set	0x28
	global	_RA1
_RA1	set	0x29
	global	_RA2
_RA2	set	0x2A
	global	_RD4
_RD4	set	0x44
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_CMCON
_CMCON	set	0x9C
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISA
_TRISA	set	0x85
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

_newSeconds:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	172
dispHeader@F1179:
       ds      20

psect	dataBANK0
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	22
_flagPause:
       ds      2

psect	dataBANK0
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	24
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
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
?_DAVBL:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_dispSTR:	; 0 bytes @ 0x0
?_toogleFlag:	; 0 bytes @ 0x0
??_toogleFlag:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
	ds	4
?_delay:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	delay@timer
delay@timer:	; 2 bytes @ 0x4
	ds	2
??_DAVBL:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
??_main:	; 0 bytes @ 0x6
??_initLCD:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_delay:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x1
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x1
	global	DAVBL@DATA
DAVBL@DATA:	; 2 bytes @ 0x1
	ds	1
??_dispSTR:	; 0 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	dispSTR@STR
dispSTR@STR:	; 1 bytes @ 0x3
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	dispSTR@i
dispSTR@i:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
??_dispHeader:	; 0 bytes @ 0x8
??_beginCount:	; 0 bytes @ 0x8
	ds	2
	global	beginCount@secLSB
beginCount@secLSB:	; 2 bytes @ 0xA
	ds	2
	global	beginCount@secLSB_83
beginCount@secLSB_83:	; 2 bytes @ 0xC
	global	dispHeader@header
dispHeader@header:	; 20 bytes @ 0xC
	ds	2
	global	beginCount@secMSB
beginCount@secMSB:	; 2 bytes @ 0xE
	ds	2
	global	beginCount@secMSB_84
beginCount@secMSB_84:	; 2 bytes @ 0x10
	ds	16
	global	dispHeader@secLSB
dispHeader@secLSB:	; 2 bytes @ 0x20
	ds	2
	global	dispHeader@secMSB
dispHeader@secMSB:	; 2 bytes @ 0x22
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        24
;!    BSS         8
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     36      64
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
;!    _initLCD->_delay
;!    _beginCount->_delay
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
;!    _DAVBL->_delay
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
;!    _DAVBL->_delay
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
;! (0) _main                                                 0     0      0    9586
;!                         _beginCount
;!                         _dispHeader
;! ---------------------------------------------------------------------------------
;! (1) _dispHeader                                          28    28      0    4969
;!                                              8 BANK0     28    28      0
;!                            ___awdiv
;!                            ___awmod
;!                           _dataCtrl
;!                            _dispSTR
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _initLCD                                              0     0      0     873
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dispSTR                                              4     4      0     612
;!                                              2 BANK0      4     4      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (1) _beginCount                                          10    10      0    4617
;!                                              8 BANK0     10    10      0
;!                              _DAVBL
;!                            ___awdiv
;!                            ___awmod
;!                           _dataCtrl
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     452
;!                                              1 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _dataCtrl                                             1     1      0     452
;!                                              1 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4    1603
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     835
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _DAVBL                                                2     2      0     650
;!                                              1 BANK0      2     2      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                3     1      2     421
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;!                         _toogleFlag
;! ---------------------------------------------------------------------------------
;! (6) _toogleFlag                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _beginCount
;!     _DAVBL
;!       _delay
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
;!       _delay
;!       _instCtrl
;!         _delay
;!     _instCtrl
;!       _delay
;!
;! _ISR (ROOT)
;!   _toogleFlag
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
;!BANK0               50     24      40       5       80.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      4A      12        0.0%
;!ABS                  0      0      4A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l1352:	
;ShotclockTimer.c: 31: OPTION_REG = 0x43;
	movlw	(043h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	32
	
l1354:	
;ShotclockTimer.c: 32: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	33
	
l1356:	
;ShotclockTimer.c: 33: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	34
	
l1358:	
;ShotclockTimer.c: 34: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	35
	
l1360:	
;ShotclockTimer.c: 35: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	36
	
l1362:	
;ShotclockTimer.c: 36: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	38
;ShotclockTimer.c: 38: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	39
;ShotclockTimer.c: 39: CMCON = 0x07;
	movlw	(07h)
	movwf	(156)^080h	;volatile
	line	40
	
l1364:	
;ShotclockTimer.c: 40: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	41
	
l1366:	
;ShotclockTimer.c: 41: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	42
;ShotclockTimer.c: 42: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	43
	
l1368:	
;ShotclockTimer.c: 43: TRISD = 0x1F;
	movlw	(01Fh)
	movwf	(136)^080h	;volatile
	line	45
	
l1370:	
;ShotclockTimer.c: 45: dispHeader();
	fcall	_dispHeader
	goto	l1372
	line	47
;ShotclockTimer.c: 47: while(1)
	
l67:	
	line	49
	
l1372:	
;ShotclockTimer.c: 48: {
;ShotclockTimer.c: 49: beginCount();
	fcall	_beginCount
	goto	l1372
	line	50
	
l68:	
	line	47
	goto	l1372
	
l69:	
	line	53
	
l70:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_dispHeader

;; *************** function _dispHeader *****************
;; Defined at:
;;		line 169 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  header         20   12[BANK0 ] unsigned char [20]
;;  secMSB          2   34[BANK0 ] int 
;;  secLSB          2   32[BANK0 ] int 
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
	line	169
global __ptext1
__ptext1:	;psect for function _dispHeader
psect	text1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	169
	global	__size_of_dispHeader
	__size_of_dispHeader	equ	__end_of_dispHeader-_dispHeader
	
_dispHeader:	
;incstack = 0
	opt	stack 2
; Regs used in _dispHeader: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	171
	
l1300:	
;ShotclockTimer.c: 171: initLCD();
	fcall	_initLCD
	line	172
;ShotclockTimer.c: 172: instCtrl(0x82);
	movlw	(082h)
	fcall	_instCtrl
	line	173
	
l1302:	
;ShotclockTimer.c: 173: char header[20] = "Shot Clock Timer";
	movlw	(dispHeader@header)&0ffh
	movwf	fsr0
	movlw	low(dispHeader@F1179)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispHeader+0)+0
	movf	fsr0,w
	movwf	((??_dispHeader+0)+0+1)
	movlw	20
	movwf	((??_dispHeader+0)+0+2)
u980:
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
	goto	u980
	line	174
	
l1304:	
;ShotclockTimer.c: 174: dispSTR(header);
	movlw	(dispHeader@header)&0ffh
	fcall	_dispSTR
	line	175
	
l1306:	
;ShotclockTimer.c: 175: dispSec = (seconds%60);
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

	line	178
	
l1308:	
;ShotclockTimer.c: 177: int secLSB;
;ShotclockTimer.c: 178: secLSB = dispSec%10;
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

	line	180
	
l1310:	
;ShotclockTimer.c: 179: int secMSB;
;ShotclockTimer.c: 180: secMSB = dispSec/10;
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

	line	181
	
l1312:	
;ShotclockTimer.c: 181: secMSB = secMSB%10;
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

	line	182
	
l1314:	
;ShotclockTimer.c: 182: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	183
	
l1316:	
;ShotclockTimer.c: 183: dataCtrl(secMSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispHeader@secMSB),w
	addlw	030h
	fcall	_dataCtrl
	line	184
	
l1318:	
;ShotclockTimer.c: 184: dataCtrl(secLSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispHeader@secLSB),w
	addlw	030h
	fcall	_dataCtrl
	line	185
	
l110:	
	return
	opt stack 0
GLOBAL	__end_of_dispHeader
	__end_of_dispHeader:
	signat	_dispHeader,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 110 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	110
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	110
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 2
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l1208:	
;ShotclockTimer.c: 112: delay(30);
	movlw	low(01Eh)
	movwf	(delay@timer)
	movlw	high(01Eh)
	movwf	((delay@timer))+1
	fcall	_delay
	line	113
;ShotclockTimer.c: 113: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	114
;ShotclockTimer.c: 114: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	115
;ShotclockTimer.c: 115: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	116
;ShotclockTimer.c: 116: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	117
;ShotclockTimer.c: 117: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	118
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_dispSTR

;; *************** function _dispSTR *****************
;; Defined at:
;;		line 187 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  STR             1    wreg     PTR unsigned char 
;;		 -> dispHeader@header(20), 
;; Auto vars:     Size  Location     Type
;;  STR             1    3[BANK0 ] PTR unsigned char 
;;		 -> dispHeader@header(20), 
;;  i               2    4[BANK0 ] int 
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
	line	187
global __ptext3
__ptext3:	;psect for function _dispSTR
psect	text3
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	187
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
	line	189
	
l1210:	
;ShotclockTimer.c: 189: for(int i = 0;;i++)
	clrf	(dispSTR@i)
	clrf	(dispSTR@i+1)
	goto	l1212
	line	190
	
l113:	
	line	191
	
l1212:	
;ShotclockTimer.c: 190: {
;ShotclockTimer.c: 191: if(STR[i] != '\0')
	movf	(dispSTR@i),w
	addwf	(dispSTR@STR),w
	movwf	(??_dispSTR+0)+0
	movf	0+(??_dispSTR+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u781
	goto	u780
u781:
	goto	l116
u780:
	line	193
	
l1214:	
;ShotclockTimer.c: 192: {
;ShotclockTimer.c: 193: dataCtrl(STR[i]);
	movf	(dispSTR@i),w
	addwf	(dispSTR@STR),w
	movwf	(??_dispSTR+0)+0
	movf	0+(??_dispSTR+0)+0,w
	movwf	fsr0
	movf	indf,w
	fcall	_dataCtrl
	line	194
;ShotclockTimer.c: 194: }
	goto	l1216
	line	195
	
l114:	
	line	197
;ShotclockTimer.c: 195: else
;ShotclockTimer.c: 196: {
;ShotclockTimer.c: 197: return;
	goto	l116
	line	198
	
l115:	
	line	189
	
l1216:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dispSTR@i),f
	skipnc
	incf	(dispSTR@i+1),f
	movlw	high(01h)
	addwf	(dispSTR@i+1),f
	goto	l1212
	
l117:	
	line	200
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_dispSTR
	__end_of_dispSTR:
	signat	_dispSTR,4216
	global	_beginCount

;; *************** function _beginCount *****************
;; Defined at:
;;		line 56 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  secMSB          2   14[BANK0 ] int 
;;  secLSB          2   10[BANK0 ] int 
;;  secMSB          2   16[BANK0 ] int 
;;  secLSB          2   12[BANK0 ] int 
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
;;      Locals:         0       8       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
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
	line	56
global __ptext4
__ptext4:	;psect for function _beginCount
psect	text4
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	56
	global	__size_of_beginCount
	__size_of_beginCount	equ	__end_of_beginCount-_beginCount
	
_beginCount:	
;incstack = 0
	opt	stack 3
; Regs used in _beginCount: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	58
	
l1320:	
;ShotclockTimer.c: 58: for(;seconds >= 0;seconds--)
	goto	l1348
	line	59
	
l74:	
	line	60
;ShotclockTimer.c: 59: {
;ShotclockTimer.c: 60: while(flagPause == 1)
	goto	l1342
	
l76:	
	line	62
;ShotclockTimer.c: 61: {
;ShotclockTimer.c: 62: if(RD4 == 1)
	btfss	(68/8),(68)&7	;volatile
	goto	u991
	goto	u990
u991:
	goto	l1342
u990:
	line	64
	
l1322:	
;ShotclockTimer.c: 63: {
;ShotclockTimer.c: 64: dataRead = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_beginCount+0)+0
	clrf	(??_beginCount+0)+0+1
	movf	0+(??_beginCount+0)+0,w
	movwf	(_dataRead)
	movf	1+(??_beginCount+0)+0,w
	movwf	(_dataRead+1)
	line	65
	
l1324:	
;ShotclockTimer.c: 65: DAVBL();
	fcall	_DAVBL
	line	66
	
l1326:	
;ShotclockTimer.c: 66: dispSec = (seconds%60);
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

	line	68
	
l1328:	
;ShotclockTimer.c: 67: int secLSB;
;ShotclockTimer.c: 68: secLSB = dispSec%10;
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

	line	70
	
l1330:	
;ShotclockTimer.c: 69: int secMSB;
;ShotclockTimer.c: 70: secMSB = dispSec/10;
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

	line	71
	
l1332:	
;ShotclockTimer.c: 71: secMSB = secMSB%10;
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

	line	72
	
l1334:	
;ShotclockTimer.c: 72: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	73
	
l1336:	
;ShotclockTimer.c: 73: dataCtrl(secMSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secMSB),w
	addlw	030h
	fcall	_dataCtrl
	line	74
	
l1338:	
;ShotclockTimer.c: 74: dataCtrl(secLSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secLSB),w
	addlw	030h
	fcall	_dataCtrl
	line	75
	
l1340:	
;ShotclockTimer.c: 75: newSeconds = seconds;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_seconds+1),w
	clrf	(_newSeconds+1)
	addwf	(_newSeconds+1)
	movf	(_seconds),w
	clrf	(_newSeconds)
	addwf	(_newSeconds)

	goto	l1342
	line	76
	
l77:	
	goto	l1342
	line	78
	
l75:	
	line	60
	
l1342:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_flagPause),w
	iorwf	(_flagPause+1),w
	skipnz
	goto	u1001
	goto	u1000
u1001:
	goto	l76
u1000:
	goto	l1344
	
l78:	
	line	79
	
l1344:	
;ShotclockTimer.c: 76: }
;ShotclockTimer.c: 78: }
;ShotclockTimer.c: 79: dispSec = (seconds%60);
	movlw	low(03Ch)
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

	line	82
;ShotclockTimer.c: 81: int secLSB;
;ShotclockTimer.c: 82: secLSB = dispSec%10;
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
	clrf	(beginCount@secLSB_83+1)
	addwf	(beginCount@secLSB_83+1)
	movf	(0+(?___awmod)),w
	clrf	(beginCount@secLSB_83)
	addwf	(beginCount@secLSB_83)

	line	84
;ShotclockTimer.c: 83: int secMSB;
;ShotclockTimer.c: 84: secMSB = dispSec/10;
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
	clrf	(beginCount@secMSB_84+1)
	addwf	(beginCount@secMSB_84+1)
	movf	(0+(?___awdiv)),w
	clrf	(beginCount@secMSB_84)
	addwf	(beginCount@secMSB_84)

	line	85
;ShotclockTimer.c: 85: secMSB = secMSB%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(beginCount@secMSB_84+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(beginCount@secMSB_84),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(beginCount@secMSB_84+1)
	addwf	(beginCount@secMSB_84+1)
	movf	(0+(?___awmod)),w
	clrf	(beginCount@secMSB_84)
	addwf	(beginCount@secMSB_84)

	line	86
;ShotclockTimer.c: 86: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	87
;ShotclockTimer.c: 87: dataCtrl(secMSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secMSB_84),w
	addlw	030h
	fcall	_dataCtrl
	line	88
;ShotclockTimer.c: 88: dataCtrl(secLSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secLSB_83),w
	addlw	030h
	fcall	_dataCtrl
	line	90
;ShotclockTimer.c: 90: delay(122);
	movlw	low(07Ah)
	movwf	(delay@timer)
	movlw	high(07Ah)
	movwf	((delay@timer))+1
	fcall	_delay
	line	58
	
l1346:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_seconds),f
	skipnc
	incf	(_seconds+1),f
	movlw	high(-1)
	addwf	(_seconds+1),f
	goto	l1348
	
l73:	
	
l1348:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_seconds+1),7
	goto	u1011
	goto	u1010
u1011:
	goto	l1342
u1010:
	goto	l1350
	
l79:	
	line	92
	
l1350:	
;ShotclockTimer.c: 91: }
;ShotclockTimer.c: 92: seconds = newSeconds;
	movf	(_newSeconds+1),w
	clrf	(_seconds+1)
	addwf	(_seconds+1)
	movf	(_newSeconds),w
	clrf	(_seconds)
	addwf	(_seconds)

	line	93
	
l80:	
	return
	opt stack 0
GLOBAL	__end_of_beginCount
	__end_of_beginCount:
	signat	_beginCount,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 100 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    1[BANK0 ] unsigned char 
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
	line	100
global __ptext5
__ptext5:	;psect for function _instCtrl
psect	text5
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	100
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
	line	102
	
l1146:	
;ShotclockTimer.c: 102: PORTC = INST;
	movf	(instCtrl@INST),w
	movwf	(7)	;volatile
	line	103
	
l1148:	
;ShotclockTimer.c: 103: RA0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	104
	
l1150:	
;ShotclockTimer.c: 104: RA2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	105
	
l1152:	
;ShotclockTimer.c: 105: RA1 = 1;
	bsf	(41/8),(41)&7	;volatile
	line	106
	
l1154:	
;ShotclockTimer.c: 106: delay(61);
	movlw	low(03Dh)
	movwf	(delay@timer)
	movlw	high(03Dh)
	movwf	((delay@timer))+1
	fcall	_delay
	line	107
	
l1156:	
;ShotclockTimer.c: 107: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	108
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 120 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    1[BANK0 ] unsigned char 
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
	line	120
global __ptext6
__ptext6:	;psect for function _dataCtrl
psect	text6
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	120
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
	line	122
	
l1158:	
;ShotclockTimer.c: 122: PORTC = DATA;
	movf	(dataCtrl@DATA),w
	movwf	(7)	;volatile
	line	123
	
l1160:	
;ShotclockTimer.c: 123: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	124
	
l1162:	
;ShotclockTimer.c: 124: RA2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	125
	
l1164:	
;ShotclockTimer.c: 125: RA1 = 1;
	bsf	(41/8),(41)&7	;volatile
	line	126
	
l1166:	
;ShotclockTimer.c: 126: delay(1);
	movlw	low(01h)
	movwf	(delay@timer)
	movlw	high(01h)
	movwf	((delay@timer))+1
	fcall	_delay
	line	127
	
l1168:	
;ShotclockTimer.c: 127: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	128
	
l89:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       6       0       0       0
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
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___awmod
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1262:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1264:	
	btfss	(___awmod@dividend+1),7
	goto	u891
	goto	u890
u891:
	goto	l1270
u890:
	line	15
	
l1266:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1268:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1270
	line	17
	
l354:	
	line	18
	
l1270:	
	btfss	(___awmod@divisor+1),7
	goto	u901
	goto	u900
u901:
	goto	l1274
u900:
	line	19
	
l1272:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1274
	
l355:	
	line	20
	
l1274:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u911
	goto	u910
u911:
	goto	l1292
u910:
	line	21
	
l1276:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1282
	
l358:	
	line	23
	
l1278:	
	movlw	01h
	
u925:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u925
	line	24
	
l1280:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1282
	line	25
	
l357:	
	line	22
	
l1282:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u931
	goto	u930
u931:
	goto	l1278
u930:
	goto	l1284
	
l359:	
	goto	l1284
	line	26
	
l360:	
	line	27
	
l1284:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u945
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u945:
	skipc
	goto	u941
	goto	u940
u941:
	goto	l1288
u940:
	line	28
	
l1286:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1288
	
l361:	
	line	29
	
l1288:	
	movlw	01h
	
u955:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u955
	line	30
	
l1290:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l1284
u960:
	goto	l1292
	
l362:	
	goto	l1292
	line	31
	
l356:	
	line	32
	
l1292:	
	movf	(___awmod@sign),w
	skipz
	goto	u970
	goto	l1296
u970:
	line	33
	
l1294:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1296
	
l363:	
	line	34
	
l1296:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l364
	
l1298:	
	line	35
	
l364:	
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
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       8       0       0       0
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
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___awdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1218:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1220:	
	btfss	(___awdiv@divisor+1),7
	goto	u791
	goto	u790
u791:
	goto	l1226
u790:
	line	16
	
l1222:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1224:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1226
	line	18
	
l341:	
	line	19
	
l1226:	
	btfss	(___awdiv@dividend+1),7
	goto	u801
	goto	u800
u801:
	goto	l1232
u800:
	line	20
	
l1228:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1230:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1232
	line	22
	
l342:	
	line	23
	
l1232:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1234:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u811
	goto	u810
u811:
	goto	l1254
u810:
	line	25
	
l1236:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1242
	
l345:	
	line	27
	
l1238:	
	movlw	01h
	
u825:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u825
	line	28
	
l1240:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1242
	line	29
	
l344:	
	line	26
	
l1242:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u831
	goto	u830
u831:
	goto	l1238
u830:
	goto	l1244
	
l346:	
	goto	l1244
	line	30
	
l347:	
	line	31
	
l1244:	
	movlw	01h
	
u845:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u845
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u855
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u855:
	skipc
	goto	u851
	goto	u850
u851:
	goto	l1250
u850:
	line	33
	
l1246:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1248:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1250
	line	35
	
l348:	
	line	36
	
l1250:	
	movlw	01h
	
u865:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u865
	line	37
	
l1252:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u871
	goto	u870
u871:
	goto	l1244
u870:
	goto	l1254
	
l349:	
	goto	l1254
	line	38
	
l343:	
	line	39
	
l1254:	
	movf	(___awdiv@sign),w
	skipz
	goto	u880
	goto	l1258
u880:
	line	40
	
l1256:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1258
	
l350:	
	line	41
	
l1258:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l351
	
l1260:	
	line	42
	
l351:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_DAVBL

;; *************** function _DAVBL *****************
;; Defined at:
;;		line 130 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DATA            2    1[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_beginCount
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	130
global __ptext9
__ptext9:	;psect for function _DAVBL
psect	text9
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	130
	global	__size_of_DAVBL
	__size_of_DAVBL	equ	__end_of_DAVBL-_DAVBL
	
_DAVBL:	
;incstack = 0
	opt	stack 3
; Regs used in _DAVBL: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	132
	
l1170:	
;ShotclockTimer.c: 132: int DATA = dataRead;
	movf	(_dataRead+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(DAVBL@DATA+1)
	addwf	(DAVBL@DATA+1)
	movf	(_dataRead),w
	clrf	(DAVBL@DATA)
	addwf	(DAVBL@DATA)

	line	133
	
l1172:	
;ShotclockTimer.c: 133: if(DATA < 3)
	movf	(DAVBL@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u725
	movlw	low(03h)
	subwf	(DAVBL@DATA),w
u725:

	skipnc
	goto	u721
	goto	u720
u721:
	goto	l1176
u720:
	line	135
	
l1174:	
;ShotclockTimer.c: 134: {
;ShotclockTimer.c: 135: DATA += 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(DAVBL@DATA),f
	skipnc
	incf	(DAVBL@DATA+1),f
	movlw	high(01h)
	addwf	(DAVBL@DATA+1),f
	line	136
;ShotclockTimer.c: 136: }
	goto	l1202
	line	137
	
l92:	
	
l1176:	
;ShotclockTimer.c: 137: else if (DATA > 6 && DATA < 11)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DAVBL@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u735
	movlw	low(07h)
	subwf	(DAVBL@DATA),w
u735:

	skipc
	goto	u731
	goto	u730
u731:
	goto	l1182
u730:
	
l1178:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DAVBL@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u745
	movlw	low(0Bh)
	subwf	(DAVBL@DATA),w
u745:

	skipnc
	goto	u741
	goto	u740
u741:
	goto	l1182
u740:
	line	139
	
l1180:	
;ShotclockTimer.c: 138: {
;ShotclockTimer.c: 139: DATA -= 1;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(DAVBL@DATA),f
	skipnc
	incf	(DAVBL@DATA+1),f
	movlw	high(-1)
	addwf	(DAVBL@DATA+1),f
	line	140
;ShotclockTimer.c: 140: }
	goto	l1202
	line	141
	
l94:	
	
l1182:	
;ShotclockTimer.c: 141: else if(DATA > 3 && DATA <= 6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DAVBL@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u755
	movlw	low(04h)
	subwf	(DAVBL@DATA),w
u755:

	skipc
	goto	u751
	goto	u750
u751:
	goto	l1188
u750:
	
l1184:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DAVBL@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u765
	movlw	low(07h)
	subwf	(DAVBL@DATA),w
u765:

	skipnc
	goto	u761
	goto	u760
u761:
	goto	l1188
u760:
	goto	l1202
	line	144
	
l1186:	
;ShotclockTimer.c: 144: }
	goto	l1202
	line	145
	
l96:	
	
l1188:	
;ShotclockTimer.c: 145: else if(DATA == 13)
	movlw	0Dh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(DAVBL@DATA),w
	iorwf	(DAVBL@DATA+1),w
	skipz
	goto	u771
	goto	u770
u771:
	goto	l1202
u770:
	line	147
	
l1190:	
;ShotclockTimer.c: 146: {
;ShotclockTimer.c: 147: DATA = 0;
	clrf	(DAVBL@DATA)
	clrf	(DAVBL@DATA+1)
	line	148
;ShotclockTimer.c: 148: }
	goto	l1202
	line	149
	
l98:	
	goto	l1202
	line	152
	
l99:	
	goto	l1202
	
l97:	
	goto	l1202
	
l95:	
	goto	l1202
	
l93:	
	line	154
;ShotclockTimer.c: 152: }
;ShotclockTimer.c: 154: switch(DATA)
	goto	l1202
	line	156
;ShotclockTimer.c: 155: {
;ShotclockTimer.c: 156: case 12:
	
l101:	
	line	157
	
l1192:	
;ShotclockTimer.c: 157: seconds += 1;
	movlw	low(01h)
	addwf	(_seconds),f
	skipnc
	incf	(_seconds+1),f
	movlw	high(01h)
	addwf	(_seconds+1),f
	line	158
	
l1194:	
;ShotclockTimer.c: 158: delay(30);
	movlw	low(01Eh)
	movwf	(delay@timer)
	movlw	high(01Eh)
	movwf	((delay@timer))+1
	fcall	_delay
	line	159
;ShotclockTimer.c: 159: break;
	goto	l105
	line	160
;ShotclockTimer.c: 160: case 14:
	
l103:	
	line	161
	
l1196:	
;ShotclockTimer.c: 161: seconds -= 1;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_seconds),f
	skipnc
	incf	(_seconds+1),f
	movlw	high(-1)
	addwf	(_seconds+1),f
	line	162
	
l1198:	
;ShotclockTimer.c: 162: delay(30);
	movlw	low(01Eh)
	movwf	(delay@timer)
	movlw	high(01Eh)
	movwf	((delay@timer))+1
	fcall	_delay
	line	163
;ShotclockTimer.c: 163: break;
	goto	l105
	line	164
;ShotclockTimer.c: 164: default:
	
l104:	
	line	165
;ShotclockTimer.c: 165: break;
	goto	l105
	line	166
	
l1200:	
;ShotclockTimer.c: 166: }
	goto	l105
	line	154
	
l100:	
	
l1202:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (DAVBL@DATA+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1394
	goto	l105
	opt asmopt_on
	
l1394:	
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
	goto	l1192
	xorlw	14^12	; case 14
	skipnz
	goto	l1196
	goto	l105
	opt asmopt_on

	line	166
	
l102:	
	line	167
	
l105:	
	return
	opt stack 0
GLOBAL	__end_of_DAVBL
	__end_of_DAVBL:
	signat	_DAVBL,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 202 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  timer           2    4[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;;		_instCtrl
;;		_initLCD
;;		_dataCtrl
;;		_DAVBL
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	202
global __ptext10
__ptext10:	;psect for function _delay
psect	text10
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	202
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 3
; Regs used in _delay: [wreg+status,2]
	line	204
	
l1140:	
;ShotclockTimer.c: 204: while(count_flag < timer)
	goto	l1142
	
l121:	
	goto	l1142
	line	206
;ShotclockTimer.c: 205: {
	
l120:	
	line	204
	
l1142:	
	movf	(_count_flag+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_delay+0)+0
	movf	(delay@timer+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u715
	movf	(delay@timer),w
	subwf	(_count_flag),w
u715:

	skipc
	goto	u711
	goto	u710
u711:
	goto	l1142
u710:
	goto	l1144
	
l122:	
	line	207
	
l1144:	
;ShotclockTimer.c: 206: }
;ShotclockTimer.c: 207: count_flag = 0;
	clrf	(_count_flag)
	clrf	(_count_flag+1)
	line	208
	
l123:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 210 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_toogleFlag
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	210
global __ptext11
__ptext11:	;psect for function _ISR
psect	text11
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	210
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
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text11
	line	212
	
i1l1108:	
;ShotclockTimer.c: 212: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	213
;ShotclockTimer.c: 213: if(INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l126
u69_20:
	line	215
	
i1l1110:	
;ShotclockTimer.c: 214: {
;ShotclockTimer.c: 215: toogleFlag();
	fcall	_toogleFlag
	line	216
	
i1l1112:	
;ShotclockTimer.c: 216: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	217
;ShotclockTimer.c: 217: }
	goto	i1l1118
	line	218
	
i1l126:	
;ShotclockTimer.c: 218: else if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l1118
u70_20:
	line	220
	
i1l1114:	
;ShotclockTimer.c: 219: {
;ShotclockTimer.c: 220: count_flag++;
	movlw	low(01h)
	addwf	(_count_flag),f
	skipnc
	incf	(_count_flag+1),f
	movlw	high(01h)
	addwf	(_count_flag+1),f
	line	221
	
i1l1116:	
;ShotclockTimer.c: 221: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l1118
	line	222
	
i1l128:	
	goto	i1l1118
	line	223
	
i1l127:	
	
i1l1118:	
;ShotclockTimer.c: 222: }
;ShotclockTimer.c: 223: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	224
	
i1l129:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_toogleFlag

;; *************** function _toogleFlag *****************
;; Defined at:
;;		line 226 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
	line	226
global __ptext12
__ptext12:	;psect for function _toogleFlag
psect	text12
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	226
	global	__size_of_toogleFlag
	__size_of_toogleFlag	equ	__end_of_toogleFlag-_toogleFlag
	
_toogleFlag:	
;incstack = 0
	opt	stack 2
; Regs used in _toogleFlag: [wreg+status,2+status,0]
	line	228
	
i1l1078:	
;ShotclockTimer.c: 228: if(flagPause == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_flagPause+1)),w
	iorwf	((_flagPause)),w
	skipz
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l1082
u67_20:
	line	229
	
i1l1080:	
;ShotclockTimer.c: 229: flagPause = 1;
	movlw	low(01h)
	movwf	(_flagPause)
	movlw	high(01h)
	movwf	((_flagPause))+1
	goto	i1l135
	line	231
	
i1l132:	
	
i1l1082:	
;ShotclockTimer.c: 231: else if(flagPause == 1)
	movlw	01h
	xorwf	(_flagPause),w
	iorwf	(_flagPause+1),w
	skipz
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l135
u68_20:
	line	232
	
i1l1084:	
;ShotclockTimer.c: 232: flagPause = 0;
	clrf	(_flagPause)
	clrf	(_flagPause+1)
	goto	i1l135
	
i1l134:	
	goto	i1l135
	line	233
	
i1l133:	
	
i1l135:	
	return
	opt stack 0
GLOBAL	__end_of_toogleFlag
	__end_of_toogleFlag:
	signat	_toogleFlag,88
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
