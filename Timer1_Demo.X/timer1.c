#include <xc.h>
#include "timer1.h"

void timer1_init(void)
{
    TMR1ON=1;
    TMR1CS=0;
    TMR1IE=1;
    TMR1=3036;
}
