/*
 * File:   main.c
 * Author: davit
 *
 * Created on November 7, 2025, 5:27 AM
 */


#include <xc.h>
#include "ssd.h"
#define _XTAL_FREQ 20000000
#pragma config WDTE=OFF
static void init_config(void)
{
    init_ssd();
}
void main(void) {
    unsigned char ssd[MAX_SSD_CNT];
    unsigned char count=0;
    unsigned char digit[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};
    init_config();
    while(1)
    {
        
        ssd[0]=digit[(count/10)]; //35 
        ssd[1]=digit[(count%10)]; 
         for (unsigned int i = 0; i < 200; i++)
        {
            display(ssd);   // Keep both displays bright
         }
        //display(ssd);
        count++;
        if(count==100)
        {
            count=0;
        }
    }
    return;
}
