#ifndef GPIO_H
#define GPIO_H

#define GPIO_OK 0

#include <stdint.h>

void GPIO_Init(void);
int GPIO_SetPinAsOutput(uint8_t Pin);
int GPIO_SetPinAsInput(uint8_t Pin);
int GPIO_SetPin(uint8_t Pin);
int GPIO_ClearPin(uint8_t Pin);
int GPIO_ReadPin(uint8_t Pin);
uint32_t GPIO_ReadPort();
#endif //GPIO_H
