/*
 * File:   main.c
 * Author: davit
 *
 * Created on November 10, 2025, 5:30 AM
 */


#include <xc.h>
#include "lcd.h"
#pragma config WDTE=OFF
void main(void) {
    lcd_init();
    const char str[]="Hardware is Best tool for ME";
    const char str1[]="Software";
    clcd_print(str,LINE1(0));
    clcd_print(str1,LINE2(0));
    while(1)
    {
      lcd_left_scroll(4);
      __delay_ms(10);
    }
    return;
}
