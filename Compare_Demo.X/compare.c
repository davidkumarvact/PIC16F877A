/*
 * File:   compare.c
 * Author: davit
 *
 * Created on November 27, 2025, 6:23 PM
 */


#include <xc.h>
#include "compare.h"

void compare_init(void)
{
    T1CON = 0x01; //Timer 1 ON
    TMR1 = 0;
    CCPR1 = 65535;
    CCP1CON = 0x0B;
    CCP1IE =1;
}
//TMR1=CCPRL&CCPRH => CCP1 Pin Forced HIGH(1) 1st(Mode)
//TMR1=CCPRL&CCPRH => CCP1 Pin Forced Low(0) 2nd(Mode)
//TMR1=CCPRL&CCPRH => Software Interrupt  3rd mode CCP1 pin is not affected
//TMR1=CCPRL&CCPRH => Trigger special event 4rd mode CCP1 pin is not affected CCP1=> Reset TImer1 (or) ccp2 => Reset time and start the ADC