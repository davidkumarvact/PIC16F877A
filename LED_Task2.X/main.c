/* 
 * File:   main.c
 * Author: PC User
 *
 * Created on September 25, 2026, 7:43 PM
 */
#include <xc.h>
#include <stdio.h>
#include <stdlib.h>

#include "main.h"
#pragma config WDTE=OFF

static void gpio_config(void)
{
    LED_PORT=0x00;
    LED_DDR_PORT=0x00; //All pins Output
}
int main() 
{
    gpio_config();
    while(1)
    {
        for(uint8_t i=0;i<8;i++)
        {
            LED_PORT = LED_PORT | (1<<i);
            __delay_ms(500);
        }
        for(uint8_t i=8;i>0;i--)
        {
            LED_PORT = LED_PORT & (~(1<<(i-1)));
            __delay_ms(500);
        }
    }
    return (EXIT_SUCCESS);
}

