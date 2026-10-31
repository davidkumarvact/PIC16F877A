/*
 * File:   adc.c
 * Author: davit
 *
 * Created on December 2, 2025, 4:03 PM
 */


#include <xc.h>
#include "adc.h"

void adc_init(void) {
    ADON=1;//Turn on ADC
    __delay_us(20);
    ADFM=1;//Right Justifed
}

unsigned short read_adc(void)
{
    unsigned short adc_reg;
    GO=1;
    
    while(nDONE);
    
    adc_reg= (ADRESH<<8)|ADRESL; 
    
    return adc_reg;
}
