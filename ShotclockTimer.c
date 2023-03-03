#include <xc.h>

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
void toggleFlag();
int flagPause = 1;
int count_flag;
int seconds = 24;
int dispSec;
int dataRead;

void main(void)
{
	OPTION_REG = 0x44;
	INTE = 1;
	INTF = 0;
	T0IE = 1;
	T0IF = 0;
	GIE = 1;	

	//ADCON1 = 0x06;
	//CMCON = 0x07;
	//TRISA = 0x00;
	TRISB = 0x01;
	TRISC = 0x00;
	TRISD = 0x0F;

	dispHeader();

	while(1)
	{		
		beginCount();
	}	
}

void beginCount()
{
	int secLSB;
	int secMSB;
	for(;seconds >= 0;)
	{	
		dispSec = (seconds%60);
		secLSB = dispSec%10;
		secMSB = dispSec/10;
		secMSB = secMSB%10;
		instCtrl(0xC0);
		dataCtrl(secMSB+48);
		dataCtrl(secLSB+48);		
		
		while(flagPause == 1)
		{
			if(RB0 == 1)
			{
				DAVBL();
				dispSec = (seconds%60);
				secLSB = dispSec%10;
				secMSB = dispSec/10;
				secMSB = secMSB%10;
				instCtrl(0xC0);
				dataCtrl(secMSB+48);
				dataCtrl(secLSB+48);
			}
		}

		delay(122); //simulate 1 second delay
		seconds--;
	}
	seconds = 24;
}

void DAVBL()
{
	int DATA = dataRead;

	switch(DATA)
	{
		case 12:
			seconds += 1;
			if(seconds > 24)
			      {seconds = 0;}
			while(RB0 = 1)
			{}
			break;
		case 14:
			seconds -= 1;
			if(seconds < 0)
			      {seconds = 24;}
			while(RB0 = 1)
			{}
			break;
		default:
			break;
	}
}

void instCtrl(unsigned char INST)
{
	PORTC = INST;
	RB5 = 0;
	RB6 = 0;
	RB7 = 1;
	delay(1);
	RB7 = 0;
}

void initLCD()
{
	instCtrl(0x38); // function set: 8-bit; dual-line
	instCtrl(0x08); // display off
	instCtrl(0x01); // display clear
	instCtrl(0x06); // entry mode: increment; shift off
	instCtrl(0x0E); // display on; cursor on; blink off
}

void dataCtrl(unsigned char DATA)
{
	PORTC = DATA;
	RB5 = 1;
	RB6 = 0;
	RB7 = 1;
	delay(1);
	RB7 = 0;
}

void dispHeader()
{
	initLCD();
	instCtrl(0x80);
	char header[20] = "TIME:";
	dispSTR(header);
	dispSec = (seconds%60);
	
	int secLSB;
	secLSB = dispSec%10;
	int secMSB;
	secMSB = dispSec/10;
	secMSB = secMSB%10;
	instCtrl(0xC0);
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
	    dataRead = PORTD & 0x0F;
		if(dataRead == 13)
		{
		      toggleFlag();
		}
		
		INTF = 0;
	}
	else if(T0IF)
	{
		count_flag++;
		T0IF = 0;
	}
	GIE = 1;
}

void toggleFlag()
{
	if(flagPause == 0)
		flagPause = 1;

	else if(flagPause == 1)
		flagPause = 0;
}