#include "Filter.h"
#include "MK20DX256.h"
#include <stdint.h>

uint16_t Filter_AddVal(uint16_t PrevVal, uint16_t NewVal)
{   
    uint32_t Product = (uint32_t)PrevVal*3;
    
    return (Product+NewVal)/4;
}