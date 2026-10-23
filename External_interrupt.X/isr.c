#include <xc.h>
#include "main.h"
void __interrupt() isr(void)
{
    if(INTF)
    {
        LED=!LED;
        INTF=0;
    }
}
