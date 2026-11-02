
#include <xc.h>
#define _XTAL_FREQ 20000000

int getSwitch(void);
void check(int sw);

void main(void)
{
    ADCON1=0x06;

    TRISA=0x0F;
    TRISB=0x00;

    PORTB=0x00;

    while(1)
    {
        int sw=getSwitch();
        if(sw==-1)
        {
            ;
        }
        else
        {
            check(sw);
        }
    }
}

int getSwitch(void)
{
    if(PORTAbits.RA0==1)
        return 0;

    else if(PORTAbits.RA1==1)
        return 1;

    else if(PORTAbits.RA2==1)
        return 2;

    else if(PORTAbits.RA3==1)
        return 3;

    return -1;
}

void check(int sw)
{
    while(getSwitch()==sw)
    {
        PORTB=0x00;
        if(sw==0)
        {
            PORTB=0x00;
            __delay_ms(20);

            for(int i=0;i<8;i++)
            {
                if(getSwitch()!=sw) return;

                PORTB|=(1<<i);
                __delay_ms(30);

                if(getSwitch()!=sw) return;
            }
        }

        else if(sw==1)
        {
            PORTB=0x00;
            __delay_ms(20);

            for(int i=7;i>=0;i--)
            {
                if(getSwitch()!=sw) return;

                PORTB|=(1<<i);
                __delay_ms(30);

                if(getSwitch()!=sw) return;
            }
        }

        else if(sw==2)
        {
            PORTB=0x00;
            __delay_ms(20);

            for(int i=0;i<8;i+=2)
            {
                if(getSwitch()!=sw) return;

                PORTB|=(1<<i);
                __delay_ms(30);

                if(getSwitch()!=sw) return;
            }
        }

        else if(sw==3)
        {
            PORTB=0x00;
            __delay_ms(20);

            for(int i=1;i<8;i+=2)
            {
                if(getSwitch()!=sw) return;

                PORTB|=(1<<i);
                __delay_ms(30);

                if(getSwitch()!=sw) return;
            }
        }
    }

   
}
