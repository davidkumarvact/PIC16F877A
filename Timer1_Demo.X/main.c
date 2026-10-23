#include<xc.h>
#include "main.h"
#include "timer1.h"

#pragma config WDTE=OFF

static void init_config(void)
{
    LED_PORT=0x00;
    LED_DDR=0x00;
    GIE=1;
    PEIE=1;
    timer1_init();
}

void main(void)
{
    init_config();
    while(1)
    {
        ;
    }
    return;
}
