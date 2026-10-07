/*
 * File:   main.c
 * Author: davit
 *
 * Created on November 5, 2025, 3:49 AM
 */


#include <xc.h>
#include "main.h"
#include <stdint.h>

#pragma config WDTE=OFF
#define _XTAL_FREQ 20000000
static void init_config(void)
{
    PORT=0x00;
    DDR=0x00;
}
void main(void) {
    init_config();
    uint8_t arr[]={ZERO,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,DP};
    while(1)
    {
        for(uint8_t i=0;i<=10;i++)
        {
            PORT=(~arr[i]);
            __delay_ms(1000);
        }
    }
    return;
}
