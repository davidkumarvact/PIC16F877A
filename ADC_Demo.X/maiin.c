/*
 * File:   maiin.c
 * Author: davit
 *
 * Created on December 2, 2025, 4:02 PM
 */


#include <xc.h>
#include "main.h"
#include "adc.h"

#pragma config WDTE=OFF

static void init_config(void)
{
    PORT=0x00;
    DDR=0x00;
    adc_init();
}
void set_led(unsigned short val)
{
    if(val>512)
    {
        LED=1;
    }
    else
    {
        LED=0;
    }
}
void main(void) {
    init_config();
    unsigned short adc_val;
    
    while(1)
    {
        adc_val = read_adc();
        set_led(adc_val);
    }
    return;
}
