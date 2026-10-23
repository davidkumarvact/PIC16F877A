/*
 * File:   main.c
 * Author: davit
 *
 * Created on November 13, 2025, 1:12 PM
 */


#include <xc.h>
#include "main.h"
#pragma config WDTE=OFF
static void init_config(void)
{
   // ADCON1=0x06;
    P1=0x00;
    P1_DDR=0;
    LED=0;
}
static void External_interrupt(void)
{
    INTE=1; // RB0 port is External Interrupt input
    INTEDG=0; //Falling Edge Trigger
    GIE = 1; //Global Enable Interrupt
}
void main(void) {
    init_config();
    External_interrupt();
    while(1)
    {
        ;
    }
}
