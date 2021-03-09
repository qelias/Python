#include "Buffer.h"
#include "MK20DX256.h"

#include<stdint.h>
#define BUFFER_SIZE (1000+1)
#define BUFFER_ERROR_EMPTY 1
#define BUFFER_ERROR_FULL 2

uint16_t Buffer[BUFFER_SIZE];
uint16_t BufferRead = 0, BufferWrite = 0;

int Buffer_Put(uint16_t Val)
{  
    uint16_t Nextwrite = (BufferWrite+1)%BUFFER_SIZE;
    if (Nextwrite == BufferRead)
        return BUFFER_ERROR_FULL;
    Buffer[BufferWrite] = Val;
    BufferWrite = (BufferWrite + 1)% BUFFER_SIZE;
    BufferWrite=Nextwrite;
    return 0;
}

int Buffer_Get(uint16_t* Val)
{
    if(BufferRead == BufferWrite)
        return BUFFER_ERROR_EMPTY;
    *Val = Buffer [BufferRead];
    BufferRead = (BufferRead + 1) % BUFFER_SIZE;
    return 0;
}