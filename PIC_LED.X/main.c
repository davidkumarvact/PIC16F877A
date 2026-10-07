#include<xc.h>
#include "main.h"

#pragma config WDTE=OFF

static void gpio_config(void)
{
    LED_PORT = 0x00;
    LED_DDR = 0x00;
}
int main()
{
    gpio_config();
    while(1)
    {
        LED_PIN=OFF;
        for(unsigned long int i=1000000;i;i--); //Delay
        LED_PIN=ON;
        for(unsigned long int i=1000000;i;i--);//Delay
    }
    return 0;
}
