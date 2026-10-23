#include <xc.h>
#include "main.h"
void __interrupt() isr(void)
{
    static unsigned int count=0;
    TMR1=3036;
    if(TMR1IF)
    {
        ++count;
        if(count==80)
        {
          count=0;
          LED =!LED;
        }
    }
    TMR1IF=0;
}
