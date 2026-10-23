/*
 * PIC16F877A
 * Timer0 External Clock Example
 * RA4/T0CKI = Switch Input
 * RD0 = LED Output
 *
 * Every external pulse on RA4:
 *  -> Timer0 overflow interrupt
 *  -> count++
 *  -> LED toggles
 */

#include <xc.h>

#define _XTAL_FREQ 20000000

// CONFIG BITS
#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define LED RD0

volatile unsigned int count = 0;

void init_timer0(void)
{
    /*
        T0CS = 1
        Timer0 clock source = External pin RA4/T0CKI
    */
    T0CS = 1;

    /*
        T0SE = 0
        Increment on Low-to-High transition
    */
    T0SE = 0;

    /*
        PSA = 1
        No prescaler for Timer0
    */
    PSA = 1;

    /*
        Preload 255
        Next pulse causes overflow
    */
    TMR0 = 255;

    // Enable Timer0 interrupt
    TMR0IE = 1;
}

void __interrupt() isr(void)
{
    if(TMR0IF)
    {
        // Clear flag
        TMR0IF = 0;

        // Reload for next pulse
        TMR0 = 255;

        // Increase software counter
        count++;

        // Toggle LED
        LED = !LED;
    }
}

void main(void)
{
    /*
        RD0 output
    */
    TRISD0 = 0;
    LED = 0;

    /*
        RA4/T0CKI input
    */
    TRISA4 = 1;

    // Initialize Timer0
    init_timer0();

    // Enable Global Interrupt
    GIE = 1;

    while(1)
    {
        // Main loop empty
    }
}
