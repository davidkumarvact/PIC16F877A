#include <xc.h>
#include"main.h"

#pragma config WDTE=OFF
void main(void)
{
    //Trun off all pins
    LED_PORT=0x00;
    SW_PORT=0x00;
    //Configure i/o 
    LED_DDR=0x00;
    SW_DDR = 0x01;//0000 0001
    while(1)
    {
        if(SW==0)
        {
            LED=0;
        }
        else
        {
            LED=1;
        }
    }
    return;
}

