/*
 * File:   pwm.c
 * Author: davit
 *
 * Created on November 29, 2025, 4:58 PM
 */


#include <xc.h>
#include "pwm.h"

void init_pwm(void)
{
    PR2 = 250;
    T2CON=0x04;
    CCP1CON=0x0C;
}
void pwm_set(unsigned int duty)
{
    CCPR1L=(duty>>2);
    CCP1CON = CCP1CON & 0xCF;
    CCP1CON = CCP1CON | (0x30 & (duty <<4));
}