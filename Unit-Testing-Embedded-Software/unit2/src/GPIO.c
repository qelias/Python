#include "GPIO.h"
#include "MK20DX256.h"

static uint32_t ReversedMask;

void GPIO_Init(void)
{
    PORTC.PDDR =0x1012A000;
    PORTC.PCOR =0x1012B000;
    PORTC.PSOR = 0x1012C000;
    ReversedMask = 0x00000022;

}

int GPIO_SetPinAsOutput( uint8_t Pin)
{
    if(Pin>31)
        return 1;

    PORTC.PDDR |= BIT_TO_MASK(Pin);

    return 0;
}
int GPIO_SetPinAsInput( uint8_t Pin)
{
    if(Pin>31)
        return 1;

    PORTC.PDDR &= ~(BIT_TO_MASK(Pin));
    
    return 0;
}
int GPIO_SetPin(uint8_t Pin)
{   
    uint32_t Mask = BIT_TO_MASK(Pin);
    if (Mask==0)
        return 1;

    if( (PORTC.PDDR & Mask) != Mask)
        GPIO_SetPinAsOutput(Pin);
    if (ReversedMask & Mask)
        PORTC.PCOR = Mask;
    else
        PORTC.PSOR = Mask;
    return 0;
}
int GPIO_ClearPin(uint8_t Pin)
{
    uint32_t Mask = BIT_TO_MASK(Pin);
    if (Mask==0)
        return 1;

    if( (PORTC.PDDR & Mask) != Mask)
        GPIO_SetPinAsOutput(Pin);
    if (ReversedMask & Mask)
        PORTC.PSOR = Mask;
    else
        PORTC.PCOR = Mask;
    return 0;
}
int GPIO_ReadPin(uint8_t Pin)
{   
    uint32_t Mask = BIT_TO_MASK(Pin);
    if (Pin>31)
        return -1;

    if( (Mask & (PORTC.PDIR^ReversedMask)) == Mask)
        return 1;
    else
        return 0;

    return -1;
}
uint32_t GPIO_ReadPort()
{
    return PORTC.PDIR ^ ReversedMask;
}