/*
 * File:   main.c
 * Author: davit
 *
 * Created on November 29, 2025, 4:58 PM
 */


#include <xc.h>
#include "main.h"
#include "pwm.h"

#pragma config WDTE=OFF
#define _XTAL_FREQ 20000000
static void init_config(void)
{
    PORT=0x00;
    DDR=0x00;
    init_pwm();
}
void main(void) {
    init_config();
    while(1)
    {
        for(unsigned int i=0;i<512;i++)
        {
            pwm_set(i);
            __delay_ms(10);
        }
        for(unsigned int i=512;i>0;i--)
        {
            pwm_set(i);
            __delay_ms(10);
        }
    }
    return;
}
