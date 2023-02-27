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
	FNCALL	_main,_dispHeader
	FNCALL	_main,_dispLCD
	FNCALL	_dispLCD,_beginCount
	FNCALL	_dispLCD,_dispHeader
	FNCALL	_dispHeader,_dispSTR
	FNCALL	_dispHeader,_initLCD
	FNCALL	_dispHeader,_instCtrl
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_dispSTR,_dataCtrl
	FNCALL	_beginCount,___awdiv
	FNCALL	_beginCount,___awmod
	FNCALL	_beginCount,_dataCtrl
	FNCALL	_beginCount,_delay
	FNCALL	_beginCount,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	FNCALL	_ISR,_toogleFlag
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_seconds
	global	dispHeader@F1179
	global	dispHeader@F1181
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	25

;initializer for _seconds
	retlw	018h
	retlw	0

psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
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
	line	175

;initializer for dispHeader@F1181
	retlw	032h
	retlw	034h
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
	retlw	0
	retlw	0
	retlw	0
	global	_count_flag
	global	_dataRead
	global	_dispMin
	global	_dispSec
	global	_flagPause
	global	_flagStart
	global	_minutes
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
	global	_RB0
_RB0	set	0x30
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

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_dataRead:
       ds      2

_dispMin:
       ds      2

_dispSec:
       ds      2

_flagPause:
       ds      2

_flagStart:
       ds      2

_minutes:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	25
_seconds:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	172
dispHeader@F1179:
       ds      20

psect	dataBANK1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	175
dispHeader@F1181:
       ds      20

	file	"ShotclockTimer.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+40)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram0
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
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
?_dispLCD:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_dispSTR:	; 0 bytes @ 0x0
?_toogleFlag:	; 0 bytes @ 0x0
??_toogleFlag:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_beginCount:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
	ds	6
??_dispLCD:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
??_main:	; 0 bytes @ 0x6
??_beginCount:	; 0 bytes @ 0x6
??_initLCD:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_delay:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
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
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x3
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x3
	ds	1
??_dispSTR:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	dispSTR@i
dispSTR@i:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	dispSTR@STR
dispSTR@STR:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
??_dispHeader:	; 0 bytes @ 0x8
	ds	1
	global	beginCount@secLSB
beginCount@secLSB:	; 2 bytes @ 0x9
	ds	2
	global	beginCount@secMSB
beginCount@secMSB:	; 2 bytes @ 0xB
	ds	1
	global	dispHeader@header
dispHeader@header:	; 20 bytes @ 0xC
	ds	20
	global	dispHeader@header2
dispHeader@header2:	; 20 bytes @ 0x20
	ds	20
	global	dispLCD@DATA
dispLCD@DATA:	; 2 bytes @ 0x34
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        42
;!    BSS         14
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       8
;!    BANK0            80     54      68
;!    BANK1            80      0      40
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    dispSTR@STR	PTR unsigned char  size(1) Largest target is 20
;!		 -> dispHeader@header2(BANK0[20]), dispHeader@header(BANK0[20]), 
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
;!    _main->_dispLCD
;!    _dispLCD->_dispHeader
;!    _dispHeader->_dispSTR
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
;! (0) _main                                                 0     0      0    5879
;!                         _dispHeader
;!                            _dispLCD
;! ---------------------------------------------------------------------------------
;! (1) _dispLCD                                              2     2      0    4352
;!                                             52 BANK0      2     2      0
;!                         _beginCount
;!                         _dispHeader
;! ---------------------------------------------------------------------------------
;! (2) _dispHeader                                          44    44      0    1527
;!                                              8 BANK0     44    44      0
;!                            _dispSTR
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (3) _initLCD                                              0     0      0     613
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (3) _dispSTR                                              4     4      0     512
;!                                              4 BANK0      4     4      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _beginCount                                           4     4      0    2565
;!                                              9 BANK0      4     4      0
;!                            ___awdiv
;!                            ___awmod
;!                           _dataCtrl
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (3) _instCtrl                                             1     1      0     322
;!                                              3 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (4) _dataCtrl                                             1     1      0     322
;!                                              3 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (4) _delay                                                3     1      2     291
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     823
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     705
;!                                              0 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _ISR                                                  6     6      0       0
;!                                              0 COMMON     6     6      0
;!                         _toogleFlag
;! ---------------------------------------------------------------------------------
;! (7) _toogleFlag                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dispHeader
;!     _dispSTR
;!       _dataCtrl
;!         _delay
;!     _initLCD
;!       _delay
;!       _instCtrl
;!         _delay
;!     _instCtrl
;!       _delay
;!   _dispLCD
;!     _beginCount
;!       ___awdiv
;!       ___awmod
;!       _dataCtrl
;!         _delay
;!       _delay
;!       _instCtrl
;!         _delay
;!     _dispHeader
;!       _dispSTR
;!         _dataCtrl
;!           _delay
;!       _initLCD
;!         _delay
;!         _instCtrl
;!           _delay
;!       _instCtrl
;!         _delay
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
;!BANK1               50      0      28       7       50.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     36      44       5       85.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       8       1       57.1%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      74      12        0.0%
;!ABS                  0      0      74       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_dispHeader
;;		_dispLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	31
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	33
	
l1352:	
;ShotclockTimer.c: 33: OPTION_REG = 0x43;
	movlw	(043h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	34
	
l1354:	
;ShotclockTimer.c: 34: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	35
	
l1356:	
;ShotclockTimer.c: 35: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	36
	
l1358:	
;ShotclockTimer.c: 36: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	37
	
l1360:	
;ShotclockTimer.c: 37: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	38
	
l1362:	
;ShotclockTimer.c: 38: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	40
;ShotclockTimer.c: 40: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	41
;ShotclockTimer.c: 41: CMCON = 0x07;
	movlw	(07h)
	movwf	(156)^080h	;volatile
	line	42
	
l1364:	
;ShotclockTimer.c: 42: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	43
	
l1366:	
;ShotclockTimer.c: 43: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	44
;ShotclockTimer.c: 44: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	45
	
l1368:	
;ShotclockTimer.c: 45: TRISD = 0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	47
	
l1370:	
;ShotclockTimer.c: 47: dispHeader();
	fcall	_dispHeader
	goto	l1372
	line	49
;ShotclockTimer.c: 49: while(1)
	
l69:	
	line	51
	
l1372:	
;ShotclockTimer.c: 50: {
;ShotclockTimer.c: 51: if(RB0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u1151
	goto	u1150
u1151:
	goto	l1372
u1150:
	line	52
	
l1374:	
;ShotclockTimer.c: 52: dispLCD();
	fcall	_dispLCD
	goto	l1372
	
l70:	
	goto	l1372
	line	53
	
l71:	
	line	49
	goto	l1372
	
l72:	
	line	54
	
l73:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_dispLCD

;; *************** function _dispLCD *****************
;; Defined at:
;;		line 121 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DATA            2   52[BANK0 ] int 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_beginCount
;;		_dispHeader
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	121
global __ptext1
__ptext1:	;psect for function _dispLCD
psect	text1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	121
	global	__size_of_dispLCD
	__size_of_dispLCD	equ	__end_of_dispLCD-_dispLCD
	
_dispLCD:	
;incstack = 0
	opt	stack 1
; Regs used in _dispLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	123
	
l1306:	
;ShotclockTimer.c: 123: int DATA = dataRead;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dataRead+1),w
	clrf	(dispLCD@DATA+1)
	addwf	(dispLCD@DATA+1)
	movf	(_dataRead),w
	clrf	(dispLCD@DATA)
	addwf	(dispLCD@DATA)

	line	124
	
l1308:	
;ShotclockTimer.c: 124: if(DATA < 3)
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1095
	movlw	low(03h)
	subwf	(dispLCD@DATA),w
u1095:

	skipnc
	goto	u1091
	goto	u1090
u1091:
	goto	l1312
u1090:
	line	126
	
l1310:	
;ShotclockTimer.c: 125: {
;ShotclockTimer.c: 126: DATA += 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dispLCD@DATA),f
	skipnc
	incf	(dispLCD@DATA+1),f
	movlw	high(01h)
	addwf	(dispLCD@DATA+1),f
	line	127
;ShotclockTimer.c: 127: }
	goto	l1328
	line	128
	
l95:	
	
l1312:	
;ShotclockTimer.c: 128: else if (DATA > 6 && DATA < 11)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1105
	movlw	low(07h)
	subwf	(dispLCD@DATA),w
u1105:

	skipc
	goto	u1101
	goto	u1100
u1101:
	goto	l1318
u1100:
	
l1314:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u1115
	movlw	low(0Bh)
	subwf	(dispLCD@DATA),w
u1115:

	skipnc
	goto	u1111
	goto	u1110
u1111:
	goto	l1318
u1110:
	line	130
	
l1316:	
;ShotclockTimer.c: 129: {
;ShotclockTimer.c: 130: DATA -= 1;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dispLCD@DATA),f
	skipnc
	incf	(dispLCD@DATA+1),f
	movlw	high(-1)
	addwf	(dispLCD@DATA+1),f
	line	131
;ShotclockTimer.c: 131: }
	goto	l1328
	line	132
	
l97:	
	
l1318:	
;ShotclockTimer.c: 132: else if(DATA > 3 && DATA <= 6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1125
	movlw	low(04h)
	subwf	(dispLCD@DATA),w
u1125:

	skipc
	goto	u1121
	goto	u1120
u1121:
	goto	l1324
u1120:
	
l1320:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1135
	movlw	low(07h)
	subwf	(dispLCD@DATA),w
u1135:

	skipnc
	goto	u1131
	goto	u1130
u1131:
	goto	l1324
u1130:
	goto	l1328
	line	135
	
l1322:	
;ShotclockTimer.c: 135: }
	goto	l1328
	line	136
	
l99:	
	
l1324:	
;ShotclockTimer.c: 136: else if(DATA == 13)
	movlw	0Dh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(dispLCD@DATA),w
	iorwf	(dispLCD@DATA+1),w
	skipz
	goto	u1141
	goto	u1140
u1141:
	goto	l1328
u1140:
	line	138
	
l1326:	
;ShotclockTimer.c: 137: {
;ShotclockTimer.c: 138: DATA = 0;
	clrf	(dispLCD@DATA)
	clrf	(dispLCD@DATA+1)
	line	139
;ShotclockTimer.c: 139: }
	goto	l1328
	line	140
	
l101:	
	goto	l1328
	line	143
	
l102:	
	goto	l1328
	
l100:	
	goto	l1328
	
l98:	
	goto	l1328
	
l96:	
	line	147
	
l1328:	
;ShotclockTimer.c: 143: }
;ShotclockTimer.c: 147: minutes = DATA;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	clrf	(_minutes+1)
	addwf	(_minutes+1)
	movf	(dispLCD@DATA),w
	clrf	(_minutes)
	addwf	(_minutes)

	line	149
;ShotclockTimer.c: 149: switch(DATA)
	goto	l1346
	line	151
;ShotclockTimer.c: 150: {
;ShotclockTimer.c: 151: case 12:
	
l104:	
	line	152
	
l1330:	
;ShotclockTimer.c: 152: beginCount();
	fcall	_beginCount
	line	153
	
l1332:	
;ShotclockTimer.c: 153: minutes = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_minutes)
	clrf	(_minutes+1)
	line	154
	
l1334:	
;ShotclockTimer.c: 154: seconds = 24;
	movlw	low(018h)
	movwf	(_seconds)
	movlw	high(018h)
	movwf	((_seconds))+1
	line	155
	
l1336:	
;ShotclockTimer.c: 155: dispHeader();
	fcall	_dispHeader
	line	156
;ShotclockTimer.c: 156: break;
	goto	l108
	line	157
;ShotclockTimer.c: 157: case 14:
	
l106:	
	line	158
	
l1338:	
;ShotclockTimer.c: 158: flagPause = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flagPause)
	movlw	high(01h)
	movwf	((_flagPause))+1
	line	159
	
l1340:	
;ShotclockTimer.c: 159: minutes = 0;
	clrf	(_minutes)
	clrf	(_minutes+1)
	line	160
	
l1342:	
;ShotclockTimer.c: 160: seconds = 24;
	movlw	low(018h)
	movwf	(_seconds)
	movlw	high(018h)
	movwf	((_seconds))+1
	line	161
;ShotclockTimer.c: 161: break;
	goto	l108
	line	162
;ShotclockTimer.c: 162: default:
	
l107:	
	line	163
;ShotclockTimer.c: 163: break;
	goto	l108
	line	164
	
l1344:	
;ShotclockTimer.c: 164: }
	goto	l108
	line	149
	
l103:	
	
l1346:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (dispLCD@DATA+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1396
	goto	l108
	opt asmopt_on
	
l1396:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 12 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (dispLCD@DATA),w
	opt asmopt_off
	xorlw	12^0	; case 12
	skipnz
	goto	l1330
	xorlw	14^12	; case 14
	skipnz
	goto	l1338
	goto	l108
	opt asmopt_on

	line	164
	
l105:	
	line	166
	
l108:	
	return
	opt stack 0
GLOBAL	__end_of_dispLCD
	__end_of_dispLCD:
	signat	_dispLCD,88
	global	_dispHeader

;; *************** function _dispHeader *****************
;; Defined at:
;;		line 168 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  header2        20   32[BANK0 ] unsigned char [20]
;;  header         20   12[BANK0 ] unsigned char [20]
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
;;      Locals:         0      40       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      44       0       0       0
;;Total ram usage:       44 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_dispSTR
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		_main
;;		_dispLCD
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	168
global __ptext2
__ptext2:	;psect for function _dispHeader
psect	text2
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	168
	global	__size_of_dispHeader
	__size_of_dispHeader	equ	__end_of_dispHeader-_dispHeader
	
_dispHeader:	
;incstack = 0
	opt	stack 1
; Regs used in _dispHeader: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	170
	
l1276:	
;ShotclockTimer.c: 170: flagStart = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagStart)
	clrf	(_flagStart+1)
	line	171
	
l1278:	
;ShotclockTimer.c: 171: initLCD();
	fcall	_initLCD
	line	172
	
l1280:	
;ShotclockTimer.c: 172: instCtrl(0x82);
	movlw	(082h)
	fcall	_instCtrl
	line	173
	
l1282:	
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
u1040:
	movf	(??_dispHeader+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_dispHeader+0)+0+3)
	incf	(??_dispHeader+0)+0,f
	movf	((??_dispHeader+0)+0+1),w
	movwf	fsr0
	
	movf	((??_dispHeader+0)+0+3),w
	movwf	indf
	incf	((??_dispHeader+0)+0+1),f
	decfsz	((??_dispHeader+0)+0+2),f
	goto	u1040
	line	174
	
l1284:	
;ShotclockTimer.c: 174: dispSTR(header);
	movlw	(dispHeader@header)&0ffh
	fcall	_dispSTR
	line	175
	
l1286:	
;ShotclockTimer.c: 175: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	176
	
l1288:	
;ShotclockTimer.c: 176: char header2[20] = "24";
	movlw	(dispHeader@header2)&0ffh
	movwf	fsr0
	movlw	low(dispHeader@F1181)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispHeader+0)+0
	movf	fsr0,w
	movwf	((??_dispHeader+0)+0+1)
	movlw	20
	movwf	((??_dispHeader+0)+0+2)
u1050:
	movf	(??_dispHeader+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_dispHeader+0)+0+3)
	incf	(??_dispHeader+0)+0,f
	movf	((??_dispHeader+0)+0+1),w
	movwf	fsr0
	
	movf	((??_dispHeader+0)+0+3),w
	movwf	indf
	incf	((??_dispHeader+0)+0+1),f
	decfsz	((??_dispHeader+0)+0+2),f
	goto	u1050
	line	177
	
l1290:	
;ShotclockTimer.c: 177: dispSTR(header2);
	movlw	(dispHeader@header2)&0ffh
	fcall	_dispSTR
	line	178
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_dispHeader
	__end_of_dispHeader:
	signat	_dispHeader,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 101 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
psect	text3,local,class=CODE,delta=2,merge=1
	line	101
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	101
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 1
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	103
	
l1184:	
;ShotclockTimer.c: 103: delay(30);
	movlw	low(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay@timer)
	movlw	high(01Eh)
	movwf	((delay@timer))+1
	fcall	_delay
	line	104
;ShotclockTimer.c: 104: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	105
;ShotclockTimer.c: 105: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	106
;ShotclockTimer.c: 106: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	107
;ShotclockTimer.c: 107: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	108
;ShotclockTimer.c: 108: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	109
	
l89:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_dispSTR

;; *************** function _dispSTR *****************
;; Defined at:
;;		line 180 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;  STR             1    wreg     PTR unsigned char 
;;		 -> dispHeader@header2(20), dispHeader@header(20), 
;; Auto vars:     Size  Location     Type
;;  STR             1    7[BANK0 ] PTR unsigned char 
;;		 -> dispHeader@header2(20), dispHeader@header(20), 
;;  i               2    5[BANK0 ] int 
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
psect	text4,local,class=CODE,delta=2,merge=1
	line	180
global __ptext4
__ptext4:	;psect for function _dispSTR
psect	text4
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	180
	global	__size_of_dispSTR
	__size_of_dispSTR	equ	__end_of_dispSTR-_dispSTR
	
_dispSTR:	
;incstack = 0
	opt	stack 1
; Regs used in _dispSTR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;dispSTR@STR stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dispSTR@STR)
	line	182
	
l1186:	
;ShotclockTimer.c: 182: for(int i = 0;;i++)
	clrf	(dispSTR@i)
	clrf	(dispSTR@i+1)
	goto	l1188
	line	183
	
l118:	
	line	184
	
l1188:	
;ShotclockTimer.c: 183: {
;ShotclockTimer.c: 184: if(STR[i] != '\0')
	movf	(dispSTR@i),w
	addwf	(dispSTR@STR),w
	movwf	(??_dispSTR+0)+0
	movf	0+(??_dispSTR+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u841
	goto	u840
u841:
	goto	l121
u840:
	line	186
	
l1190:	
;ShotclockTimer.c: 185: {
;ShotclockTimer.c: 186: dataCtrl(STR[i]);
	movf	(dispSTR@i),w
	addwf	(dispSTR@STR),w
	movwf	(??_dispSTR+0)+0
	movf	0+(??_dispSTR+0)+0,w
	movwf	fsr0
	movf	indf,w
	fcall	_dataCtrl
	line	187
;ShotclockTimer.c: 187: }
	goto	l1192
	line	188
	
l119:	
	line	190
;ShotclockTimer.c: 188: else
;ShotclockTimer.c: 189: {
;ShotclockTimer.c: 190: return;
	goto	l121
	line	191
	
l120:	
	line	182
	
l1192:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dispSTR@i),f
	skipnc
	incf	(dispSTR@i+1),f
	movlw	high(01h)
	addwf	(dispSTR@i+1),f
	goto	l1188
	
l122:	
	line	193
	
l121:	
	return
	opt stack 0
GLOBAL	__end_of_dispSTR
	__end_of_dispSTR:
	signat	_dispSTR,4216
	global	_beginCount

;; *************** function _beginCount *****************
;; Defined at:
;;		line 57 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  secMSB          2   11[BANK0 ] int 
;;  secLSB          2    9[BANK0 ] int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_dataCtrl
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_dispLCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	57
global __ptext5
__ptext5:	;psect for function _beginCount
psect	text5
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	57
	global	__size_of_beginCount
	__size_of_beginCount	equ	__end_of_beginCount-_beginCount
	
_beginCount:	
;incstack = 0
	opt	stack 2
; Regs used in _beginCount: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l1292:	
;ShotclockTimer.c: 59: for(;seconds >= 0;seconds--)
	goto	l1304
	line	60
	
l77:	
	line	61
	
l1294:	
;ShotclockTimer.c: 60: {
;ShotclockTimer.c: 61: dispMin = (seconds/60);
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(03Ch)
	movwf	((___awdiv@divisor))+1
	movf	(_seconds+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(_seconds),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(_dispMin+1)
	addwf	(_dispMin+1)
	movf	(0+(?___awdiv)),w
	clrf	(_dispMin)
	addwf	(_dispMin)

	line	62
;ShotclockTimer.c: 62: dispSec = (seconds%60);
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

	line	65
;ShotclockTimer.c: 64: int secLSB;
;ShotclockTimer.c: 65: secLSB = dispSec%10;
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

	line	67
;ShotclockTimer.c: 66: int secMSB;
;ShotclockTimer.c: 67: secMSB = dispSec/10;
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

	line	68
;ShotclockTimer.c: 68: secMSB = secMSB%10;
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

	line	69
;ShotclockTimer.c: 69: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	72
;ShotclockTimer.c: 72: dataCtrl(secMSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secMSB),w
	addlw	030h
	fcall	_dataCtrl
	line	73
;ShotclockTimer.c: 73: dataCtrl(secLSB+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(beginCount@secLSB),w
	addlw	030h
	fcall	_dataCtrl
	line	75
;ShotclockTimer.c: 75: delay(122);
	movlw	low(07Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay@timer)
	movlw	high(07Ah)
	movwf	((delay@timer))+1
	fcall	_delay
	line	76
	
l1296:	
;ShotclockTimer.c: 76: if(flagStart == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_flagStart+1)),w
	iorwf	((_flagStart)),w
	skipz
	goto	u1061
	goto	u1060
u1061:
	goto	l1300
u1060:
	goto	l83
	line	78
	
l1298:	
;ShotclockTimer.c: 77: {
;ShotclockTimer.c: 78: break;
	goto	l83
	line	79
	
l78:	
	line	80
;ShotclockTimer.c: 79: }
;ShotclockTimer.c: 80: while(flagPause == 1)
	goto	l1300
	
l81:	
	goto	l1300
	line	82
;ShotclockTimer.c: 81: {
	
l80:	
	line	80
	
l1300:	
	movlw	01h
	xorwf	(_flagPause),w
	iorwf	(_flagPause+1),w
	skipnz
	goto	u1071
	goto	u1070
u1071:
	goto	l1300
u1070:
	goto	l1302
	
l82:	
	line	59
	
l1302:	
	movlw	low(-1)
	addwf	(_seconds),f
	skipnc
	incf	(_seconds+1),f
	movlw	high(-1)
	addwf	(_seconds+1),f
	goto	l1304
	
l76:	
	
l1304:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_seconds+1),7
	goto	u1081
	goto	u1080
u1081:
	goto	l1294
u1080:
	goto	l83
	
l79:	
	line	84
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_beginCount
	__end_of_beginCount:
	signat	_beginCount,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 91 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	91
global __ptext6
__ptext6:	;psect for function _instCtrl
psect	text6
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	91
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 2
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
;instCtrl@INST stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@INST)
	line	93
	
l1160:	
;ShotclockTimer.c: 93: PORTC = INST;
	movf	(instCtrl@INST),w
	movwf	(7)	;volatile
	line	94
	
l1162:	
;ShotclockTimer.c: 94: RA0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	95
	
l1164:	
;ShotclockTimer.c: 95: RA2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	96
	
l1166:	
;ShotclockTimer.c: 96: RA1 = 1;
	bsf	(41/8),(41)&7	;volatile
	line	97
	
l1168:	
;ShotclockTimer.c: 97: delay(30);
	movlw	low(01Eh)
	movwf	(delay@timer)
	movlw	high(01Eh)
	movwf	((delay@timer))+1
	fcall	_delay
	line	98
	
l1170:	
;ShotclockTimer.c: 98: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	99
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 111 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
;;		_dispSTR
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	111
global __ptext7
__ptext7:	;psect for function _dataCtrl
psect	text7
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	111
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 1
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@DATA stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@DATA)
	line	113
	
l1172:	
;ShotclockTimer.c: 113: PORTC = DATA;
	movf	(dataCtrl@DATA),w
	movwf	(7)	;volatile
	line	114
	
l1174:	
;ShotclockTimer.c: 114: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	115
	
l1176:	
;ShotclockTimer.c: 115: RA2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	116
	
l1178:	
;ShotclockTimer.c: 116: RA1 = 1;
	bsf	(41/8),(41)&7	;volatile
	line	117
	
l1180:	
;ShotclockTimer.c: 117: delay(0);
	movlw	low(0)
	movwf	(delay@timer)
	movlw	high(0)
	movwf	((delay@timer))+1
	fcall	_delay
	line	118
	
l1182:	
;ShotclockTimer.c: 118: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	119
	
l92:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 221 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
;;		_initLCD
;;		_dataCtrl
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	221
global __ptext8
__ptext8:	;psect for function _delay
psect	text8
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	221
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 2
; Regs used in _delay: [wreg+status,2]
	line	223
	
l1154:	
;ShotclockTimer.c: 223: while(count_flag < timer)
	goto	l1156
	
l126:	
	goto	l1156
	line	225
;ShotclockTimer.c: 224: {
	
l125:	
	line	223
	
l1156:	
	movf	(_count_flag+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_delay+0)+0
	movf	(delay@timer+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u835
	movf	(delay@timer),w
	subwf	(_count_flag),w
u835:

	skipc
	goto	u831
	goto	u830
u831:
	goto	l1156
u830:
	goto	l1158
	
l127:	
	line	226
	
l1158:	
;ShotclockTimer.c: 225: }
;ShotclockTimer.c: 226: count_flag = 0;
	clrf	(_count_flag)
	clrf	(_count_flag+1)
	line	227
	
l128:	
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
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext9
__ptext9:	;psect for function ___awmod
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1238:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1240:	
	btfss	(___awmod@dividend+1),7
	goto	u951
	goto	u950
u951:
	goto	l1246
u950:
	line	15
	
l1242:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1244:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1246
	line	17
	
l364:	
	line	18
	
l1246:	
	btfss	(___awmod@divisor+1),7
	goto	u961
	goto	u960
u961:
	goto	l1250
u960:
	line	19
	
l1248:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1250
	
l365:	
	line	20
	
l1250:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u971
	goto	u970
u971:
	goto	l1268
u970:
	line	21
	
l1252:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1258
	
l368:	
	line	23
	
l1254:	
	movlw	01h
	
u985:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u985
	line	24
	
l1256:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1258
	line	25
	
l367:	
	line	22
	
l1258:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u991
	goto	u990
u991:
	goto	l1254
u990:
	goto	l1260
	
l369:	
	goto	l1260
	line	26
	
l370:	
	line	27
	
l1260:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1005
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1005:
	skipc
	goto	u1001
	goto	u1000
u1001:
	goto	l1264
u1000:
	line	28
	
l1262:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1264
	
l371:	
	line	29
	
l1264:	
	movlw	01h
	
u1015:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1015
	line	30
	
l1266:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l1260
u1020:
	goto	l1268
	
l372:	
	goto	l1268
	line	31
	
l366:	
	line	32
	
l1268:	
	movf	(___awmod@sign),w
	skipz
	goto	u1030
	goto	l1272
u1030:
	line	33
	
l1270:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1272
	
l373:	
	line	34
	
l1272:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l374
	
l1274:	
	line	35
	
l374:	
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
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext10
__ptext10:	;psect for function ___awdiv
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1194:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1196:	
	btfss	(___awdiv@divisor+1),7
	goto	u851
	goto	u850
u851:
	goto	l1202
u850:
	line	16
	
l1198:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1200:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1202
	line	18
	
l351:	
	line	19
	
l1202:	
	btfss	(___awdiv@dividend+1),7
	goto	u861
	goto	u860
u861:
	goto	l1208
u860:
	line	20
	
l1204:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1206:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1208
	line	22
	
l352:	
	line	23
	
l1208:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1210:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u871
	goto	u870
u871:
	goto	l1230
u870:
	line	25
	
l1212:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1218
	
l355:	
	line	27
	
l1214:	
	movlw	01h
	
u885:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u885
	line	28
	
l1216:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1218
	line	29
	
l354:	
	line	26
	
l1218:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u891
	goto	u890
u891:
	goto	l1214
u890:
	goto	l1220
	
l356:	
	goto	l1220
	line	30
	
l357:	
	line	31
	
l1220:	
	movlw	01h
	
u905:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u905
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u915
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u915:
	skipc
	goto	u911
	goto	u910
u911:
	goto	l1226
u910:
	line	33
	
l1222:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1224:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1226
	line	35
	
l358:	
	line	36
	
l1226:	
	movlw	01h
	
u925:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u925
	line	37
	
l1228:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u931
	goto	u930
u931:
	goto	l1220
u930:
	goto	l1230
	
l359:	
	goto	l1230
	line	38
	
l353:	
	line	39
	
l1230:	
	movf	(___awdiv@sign),w
	skipz
	goto	u940
	goto	l1234
u940:
	line	40
	
l1232:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1234
	
l360:	
	line	41
	
l1234:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l361
	
l1236:	
	line	42
	
l361:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 229 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
;;		_toogleFlag
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	229
global __ptext11
__ptext11:	;psect for function _ISR
psect	text11
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	229
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 1
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
	line	231
	
i1l1120:	
;ShotclockTimer.c: 231: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	232
;ShotclockTimer.c: 232: if(INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l131
u81_20:
	line	234
	
i1l1122:	
;ShotclockTimer.c: 233: {
;ShotclockTimer.c: 234: dataRead = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	movwf	(_dataRead)
	movf	1+(??_ISR+0)+0,w
	movwf	(_dataRead+1)
	line	235
	
i1l1124:	
;ShotclockTimer.c: 235: toogleFlag();
	fcall	_toogleFlag
	line	236
	
i1l1126:	
;ShotclockTimer.c: 236: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	237
;ShotclockTimer.c: 237: }
	goto	i1l1132
	line	238
	
i1l131:	
;ShotclockTimer.c: 238: else if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l1132
u82_20:
	line	240
	
i1l1128:	
;ShotclockTimer.c: 239: {
;ShotclockTimer.c: 240: count_flag++;
	movlw	low(01h)
	addwf	(_count_flag),f
	skipnc
	incf	(_count_flag+1),f
	movlw	high(01h)
	addwf	(_count_flag+1),f
	line	241
	
i1l1130:	
;ShotclockTimer.c: 241: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l1132
	line	242
	
i1l133:	
	goto	i1l1132
	line	243
	
i1l132:	
	
i1l1132:	
;ShotclockTimer.c: 242: }
;ShotclockTimer.c: 243: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	244
	
i1l134:	
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
	global	_toogleFlag

;; *************** function _toogleFlag *****************
;; Defined at:
;;		line 246 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
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
	line	246
global __ptext12
__ptext12:	;psect for function _toogleFlag
psect	text12
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\Shotclock Timer\ShotclockTimer.c"
	line	246
	global	__size_of_toogleFlag
	__size_of_toogleFlag	equ	__end_of_toogleFlag-_toogleFlag
	
_toogleFlag:	
;incstack = 0
	opt	stack 1
; Regs used in _toogleFlag: [wreg+status,2+status,0]
	line	248
	
i1l1076:	
;ShotclockTimer.c: 248: if(dataRead == 12)
	movlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_dataRead),w
	iorwf	(_dataRead+1),w
	skipz
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l1086
u74_20:
	line	250
	
i1l1078:	
;ShotclockTimer.c: 249: {
;ShotclockTimer.c: 250: if(flagStart == 0)
	movf	((_flagStart+1)),w
	iorwf	((_flagStart)),w
	skipz
	goto	u75_21
	goto	u75_20
u75_21:
	goto	i1l1082
u75_20:
	line	251
	
i1l1080:	
;ShotclockTimer.c: 251: flagStart = 1;
	movlw	low(01h)
	movwf	(_flagStart)
	movlw	high(01h)
	movwf	((_flagStart))+1
	goto	i1l1086
	line	253
	
i1l138:	
	
i1l1082:	
;ShotclockTimer.c: 253: else if(flagStart == 1)
	movlw	01h
	xorwf	(_flagStart),w
	iorwf	(_flagStart+1),w
	skipz
	goto	u76_21
	goto	u76_20
u76_21:
	goto	i1l1086
u76_20:
	line	254
	
i1l1084:	
;ShotclockTimer.c: 254: flagStart = 0;
	clrf	(_flagStart)
	clrf	(_flagStart+1)
	goto	i1l1086
	
i1l140:	
	goto	i1l1086
	line	255
	
i1l139:	
	goto	i1l1086
	
i1l137:	
	line	257
	
i1l1086:	
;ShotclockTimer.c: 255: }
;ShotclockTimer.c: 257: if(dataRead == 14)
	movlw	0Eh
	xorwf	(_dataRead),w
	iorwf	(_dataRead+1),w
	skipz
	goto	u77_21
	goto	u77_20
u77_21:
	goto	i1l145
u77_20:
	line	259
	
i1l1088:	
;ShotclockTimer.c: 258: {
;ShotclockTimer.c: 259: if(flagPause == 0)
	movf	((_flagPause+1)),w
	iorwf	((_flagPause)),w
	skipz
	goto	u78_21
	goto	u78_20
u78_21:
	goto	i1l1092
u78_20:
	line	260
	
i1l1090:	
;ShotclockTimer.c: 260: flagPause = 1;
	movlw	low(01h)
	movwf	(_flagPause)
	movlw	high(01h)
	movwf	((_flagPause))+1
	goto	i1l145
	line	262
	
i1l142:	
	
i1l1092:	
;ShotclockTimer.c: 262: else if(flagPause == 1)
	movlw	01h
	xorwf	(_flagPause),w
	iorwf	(_flagPause+1),w
	skipz
	goto	u79_21
	goto	u79_20
u79_21:
	goto	i1l145
u79_20:
	line	263
	
i1l1094:	
;ShotclockTimer.c: 263: flagPause = 0;
	clrf	(_flagPause)
	clrf	(_flagPause+1)
	goto	i1l145
	
i1l144:	
	goto	i1l145
	line	264
	
i1l143:	
	goto	i1l145
	
i1l141:	
	line	266
	
i1l145:	
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
