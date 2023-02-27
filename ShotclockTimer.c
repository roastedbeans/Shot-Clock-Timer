#include <xc.h>
#include <math.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void dispHeader();
void beginCount();
void delay(int timer);
void DAVBL();
void dataCtrl(unsigned char DATA);
void dispSTR(char STR[20]);
void initLCD();
void instCtrl(unsigned char INST);
void toogleFlag();
int flagPause = 1;
int count_flag;
int seconds = 24;
int newSeconds = 0;
int dispSec;
int dataRead;

void main(void)
{
	OPTION_REG = 0x43;
	INTE = 1;
	INTF = 0;
	T0IE = 1;
	T0IF = 0;
	GIE = 1;	

	ADCON1 = 0x06;
	CMCON = 0x07;
	TRISA = 0x00;
	TRISB = 0x01;
	TRISC = 0x00;
	TRISD = 0x1F;

	dispHeader();

	while(1)
	{		
		beginCount();
	}

	
}


void beginCount()
{	
	for(;seconds >= 0;seconds--)
	{	
		while(flagPause == 1)
		{
			if(RD4 == 1)
			{
				dataRead = PORTD & 0x0F;
				DAVBL();
				dispSec = (seconds%60);
				int secLSB;
				secLSB = dispSec%10;
				int secMSB;
				secMSB = dispSec/10;
				secMSB = secMSB%10;
				instCtrl(0xC8);
				dataCtrl(secMSB+48);
				dataCtrl(secLSB+48);
				newSeconds = seconds;
			}
	
		}
		dispSec = (seconds%60);
		
		int secLSB;
		secLSB = dispSec%10;
		int secMSB;
		secMSB = dispSec/10;
		secMSB = secMSB%10;
		instCtrl(0xC8);
		dataCtrl(secMSB+48);
		dataCtrl(secLSB+48);		

		delay(122);
	}
	seconds = newSeconds;
}
//instCtrl(0x80)
//instCtrl(0xC0)
//instCtrl(0x94)
//instCtrl(0xD4)
//122 for 1s ; 98 for 0.8s || sec/.008196

void instCtrl(unsigned char INST)
{
	PORTC = INST;
	RA0 = 0;
	RA2 = 0;
	RA1 = 1;
	delay(61);
	RA1 = 0;
}

void initLCD()
{
	delay(30);
	instCtrl(0x38); // function set: 8-bit; dual-line
	instCtrl(0x08); // display off
	instCtrl(0x01); // display clear
	instCtrl(0x06); // entry mode: increment; shift off
	instCtrl(0x0E); // display on; cursor on; blink off
}

void dataCtrl(unsigned char DATA)
{
	PORTC = DATA;
	RA0 = 1;
	RA2 = 0;
	RA1 = 1;
	delay(1);
	RA1 = 0;
}

void DAVBL()
{
	int DATA = dataRead;
	if(DATA < 3)
	{
		DATA += 1;
	}
	else if (DATA > 6 && DATA < 11)
	{
		DATA -= 1;
	}
	else if(DATA > 3 && DATA <= 6)
	{
		DATA = DATA;
	}
	else if(DATA == 13)
	{
		DATA = 0;
	}
	else
	{
		DATA = DATA;
	}
	
	switch(DATA)
	{
		case 12:
			seconds += 1;
			delay(30);
			break;
		case 14:
			seconds -= 1;
			delay(30);
			break;
		default:
			break;
	}
}

void dispHeader()
{
	initLCD();
	instCtrl(0x82);
	char header[20] = "Shot Clock Timer";
	dispSTR(header);
	dispSec = (seconds%60);
	
	int secLSB;
	secLSB = dispSec%10;
	int secMSB;
	secMSB = dispSec/10;
	secMSB = secMSB%10;
	instCtrl(0xC8);
	dataCtrl(secMSB+48);
	dataCtrl(secLSB+48);
}

void dispSTR(char STR[20])
{
	for(int i = 0;;i++)
	{
		if(STR[i] != '\0')
		{
			dataCtrl(STR[i]);
		}
		else
		{
			return;
		}
	}
}

void delay(int timer)
{
    while(count_flag < timer)
    {
    }
    count_flag = 0;
}

void interrupt ISR()
{
	GIE = 0;
	if(INTF)
	{
		toogleFlag();
		INTF = 0;
	}
	else if(T0IF)
	{
		count_flag++;
		T0IF = 0;
	}
	GIE = 1;
}

void toogleFlag()
{
	if(flagPause == 0)
		flagPause = 1;

	else if(flagPause == 1)
		flagPause = 0;
}