/*
 * File:   lcd.c
 * Author: davit
 *
 * Created on November 10, 2025, 5:30 AM
 */


#include <xc.h>
#include "lcd.h"

static void clcd_write(unsigned char byte, unsigned char mode)
{
    RS = mode;

    // Send upper nibble (D7-D4)
    LCD_DATA_PORT = (LCD_DATA_PORT & 0x0F) | (byte & 0xF0);

    EN = HI;
    __delay_us(1);
    EN = LOW;

    // Send lower nibble (D3-D0 shifted to D7-D4)
    LCD_DATA_PORT = (LCD_DATA_PORT & 0x0F) | ((byte << 4) & 0xF0);

    EN = HI;
    __delay_us(1);
    EN = LOW;

    // Allow LCD to execute the command
    if (byte == CLEAR_DISPLAY || byte == 0x02)
    {
        __delay_ms(2);
    }
    else
    {
        __delay_us(50);
    }
}


static void init_display(void)
{
    __delay_ms(30);

    // Initialization: LCD starts in 8-bit mode.
    // Send only the upper nibble 0x3 three times.
    RS = INST_MODE;

    LCD_DATA_PORT = (LCD_DATA_PORT & 0x0F) | 0x30;
    EN = HI;
    __delay_us(1);
    EN = LOW;
    __delay_ms(5);

    LCD_DATA_PORT = (LCD_DATA_PORT & 0x0F) | 0x30;
    EN = HI;
    __delay_us(1);
    EN = LOW;
    __delay_us(150);

    LCD_DATA_PORT = (LCD_DATA_PORT & 0x0F) | 0x30;
    EN = HI;
    __delay_us(1);
    EN = LOW;
    __delay_us(150);

    // Switch LCD to 4-bit mode: send nibble 0x2 only.
    LCD_DATA_PORT = (LCD_DATA_PORT & 0x0F) | 0x20;
    EN = HI;
    __delay_us(1);
    EN = LOW;
    __delay_us(150);

    clcd_write(0x28, INST_MODE);  // 4-bit, 2 lines, 5x8 font
    clcd_write(0x0C, INST_MODE);  // Display ON, cursor OFF
    clcd_write(0x01, INST_MODE);  // Clear display
    clcd_write(0x06, INST_MODE);  // Increment cursor
}

void lcd_init(void)
{
    LCD_DATA_DR =0x00;
    RS_DR=0;
    EN_DR=0;
    init_display();
}

void clcd_print(const char *str,unsigned char addr)
{
    clcd_write(addr,INST_MODE);//Move DDRAM Address
    while(*str)
    {
        clcd_write(*str,DATA_MODE);
        str++;
    }
}

void lcd_right_scroll(unsigned char times)
{
    for(int i=0;i<times;i++)
    {
        clcd_write(RIGHT_SCROLL,INST_MODE);
        __delay_ms(200);
    }
}

void lcd_left_scroll(unsigned char times)
{
    for(int i=0;i<times;i++)
    {
        clcd_write(LEFT_SCROLL,INST_MODE);
        __delay_ms(200);
    }
}