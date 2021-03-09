#include "Parser.h"
#include "MK20DX256.h"

#ifndef TEST
#define STATIC static
#else
#define STATIC
#endif

#define PARSER_BUFFERLENGTH_MAX 23
#define START 0
#define CMD 1
#define LEN 2


#ifndef NULL
#define NULL 0
#endif

static char buffer[PARSER_BUFFERLENGTH_MAX];

STATIC PARSER_STATE_T state = PARSER_LOOKING_FOR_START;
static int len;
static int nibbles;

char* Parser_AddChar(char NewChar)
{

    if(NewChar=='[')
    {   
        buffer[START] = NewChar;
        state=PARSER_LOOKING_FOR_CMD;
        return NULL;
    }
    switch (state){
        case PARSER_LOOKING_FOR_CMD:
            if(NewChar>='A' && NewChar <= 'Z')
            {   
                len = 0;
                state = PARSER_LOOKING_FOR_LEN;
                buffer[CMD]=NewChar;
            }
            else
                state = PARSER_LOOKING_FOR_START;
            break;
        case PARSER_LOOKING_FOR_LEN:
            if(NewChar == '0')
            {
                state = PARSER_LOOKING_FOR_END;
                buffer[LEN]=NewChar;
                
            }
            else if (NewChar>='1' && NewChar <= '9')
            {
                buffer[LEN]=NewChar;
                nibbles = 2*(int)NewChar;
                state = PARSER_LOOKING_FOR_DAT;
            }
            else
                state = PARSER_LOOKING_FOR_START;
            break;
        case PARSER_LOOKING_FOR_DAT:
            if( ((NewChar>='0' && NewChar<='9') ||
             (NewChar>='A' && NewChar<='F') ||
              (NewChar>='a' && NewChar<='f')) && len<nibbles)
            {
                buffer[len++] = NewChar;
            }
            else if (len==nibbles)
                state = PARSER_LOOKING_FOR_END;
            else
                state = PARSER_LOOKING_FOR_START;
            break;
        case PARSER_LOOKING_FOR_END:
            if(NewChar==']')
                {   
                    buffer[3] = NewChar;
                    buffer[4] = '\0';
                    state = PARSER_LOOKING_FOR_START;
                    return buffer;
                }
            else
                state = PARSER_LOOKING_FOR_START;
            break;

        default: break;
    }
    return (NULL);
}