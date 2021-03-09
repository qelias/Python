
#include "unity.h"
#include "Parser.h"
#include "MK20DX256.h"

extern PARSER_STATE_T state; // Give tests access to state enum
extern nibbles;
// ***********************
// ***********************
// Test using internal variables for building the API
// ***********************
// ***********************

// ***********************
// LOOKING_FOR_START TESTS
// ***********************
void test_Parser_AddChar_should_StartLookingForCmdOnLeftBracket(void)
{
    state = PARSER_LOOKING_FOR_START;
    TEST_ASSERT_NULL(Parser_AddChar('['));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_CMD,state);
}
void test_Parser_AddChar_should_RejectNonBracketCharactersWhileSeekingStart(void)
{
    state = PARSER_LOOKING_FOR_START;
    TEST_ASSERT_NULL(Parser_AddChar('f'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    TEST_ASSERT_NULL(Parser_AddChar('|'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    TEST_ASSERT_NULL(Parser_AddChar('('));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    TEST_ASSERT_NULL(Parser_AddChar('9'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    TEST_ASSERT_NULL(Parser_AddChar('A'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
}

// *********************
// LOOKING_FOR_CMD TESTS
// *********************
void test_Parser_AddChar_should_AcceptAValidCommandCharacter(void)
{
    state = PARSER_LOOKING_FOR_CMD;
    TEST_ASSERT_NULL(Parser_AddChar('A'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_LEN,state);
    state = PARSER_LOOKING_FOR_CMD;
    TEST_ASSERT_NULL(Parser_AddChar('C'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_LEN,state);
    state = PARSER_LOOKING_FOR_CMD;
    TEST_ASSERT_NULL(Parser_AddChar('Z'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_LEN,state);        

}
void test_Parser_AddChar_should_RejectInvalidCommandCharacter(void)
{
    state = PARSER_LOOKING_FOR_CMD;
    TEST_ASSERT_NULL(Parser_AddChar('1'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    state = PARSER_LOOKING_FOR_CMD;
    TEST_ASSERT_NULL(Parser_AddChar('@'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);        
    state = PARSER_LOOKING_FOR_CMD;
    TEST_ASSERT_NULL(Parser_AddChar('\\'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);      

}

// *********************
// LOOKING_FOR_LEN TESTS
// *********************
void test_Parser_AddChar_should_AcceptLengthOfZero(void)
{
    state = PARSER_LOOKING_FOR_LEN;
    TEST_ASSERT_NULL(Parser_AddChar('0'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_END,state);
}
void test_Parser_AddChar_should_RejectInvalidLengths(void)
{
    state = PARSER_LOOKING_FOR_LEN;
    TEST_ASSERT_NULL(Parser_AddChar(':'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    state = PARSER_LOOKING_FOR_LEN;
    TEST_ASSERT_NULL(Parser_AddChar('\\'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    state = PARSER_LOOKING_FOR_LEN;
    TEST_ASSERT_NULL(Parser_AddChar('O'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    state = PARSER_LOOKING_FOR_LEN;
    TEST_ASSERT_NULL(Parser_AddChar("10"));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
}
void test_Parser_AddChar_should_AcceptValidLengths(void)
{
    state = PARSER_LOOKING_FOR_LEN;
    TEST_ASSERT_NULL(Parser_AddChar('1'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    state = PARSER_LOOKING_FOR_LEN;
    TEST_ASSERT_NULL(Parser_AddChar('5'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    state = PARSER_LOOKING_FOR_LEN;
    TEST_ASSERT_NULL(Parser_AddChar('9'));
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
}

// *********************
// LOOKING_FOR_DAT TESTS
// *********************

void test_Parser_AddChar_should_RejectInvalidCharacter(void)
{
    state = PARSER_LOOKING_FOR_DAT;
    TEST_ASSERT_NULL(Parser_AddChar('m'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    state = PARSER_LOOKING_FOR_DAT;
    TEST_ASSERT_NULL(Parser_AddChar(']'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);
    state = PARSER_LOOKING_FOR_DAT;
    TEST_ASSERT_NULL(Parser_AddChar('w'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_START,state);        
}
void test_Parser_AddChar_should_AcceptValidCharacter_while_NibblesRemaining(void)
{
    nibbles = 4;
    state = PARSER_LOOKING_FOR_DAT;
    TEST_ASSERT_NULL(Parser_AddChar('0'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    TEST_ASSERT_NULL(Parser_AddChar('4'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    TEST_ASSERT_NULL(Parser_AddChar('a'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    //nibbles = 8;
    state = PARSER_LOOKING_FOR_DAT;
    TEST_ASSERT_NULL(Parser_AddChar('0'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    TEST_ASSERT_NULL(Parser_AddChar('4'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    TEST_ASSERT_NULL(Parser_AddChar('a'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    TEST_ASSERT_NULL(Parser_AddChar('D'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    TEST_ASSERT_NULL(Parser_AddChar('5'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    TEST_ASSERT_NULL(Parser_AddChar('B'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
    TEST_ASSERT_NULL(Parser_AddChar('e'))
    TEST_ASSERT_EQUAL(PARSER_LOOKING_FOR_DAT,state);
}

// ***************************************************
// Helper function for testing the whole state machine
// ***************************************************
void insert_valid_minimal_packet(char cmd,int len,const char* full) // Helper
{
    TEST_ASSERT_NULL(Parser_AddChar('['));
    TEST_ASSERT_NULL(Parser_AddChar(cmd));
    TEST_ASSERT_NULL(Parser_AddChar('0'));
    TEST_ASSERT_EQUAL_STRING(full,Parser_AddChar(']'));
}

// ***************************************************
// Testing the whole state machine without internal state variables
// dealing with the API only
// ***************************************************

void test_Parser_AddChar_should_HandleBackToBackValidPacketsWithNoData(void)
{
    insert_valid_minimal_packet('A',0,"[A0]");
    insert_valid_minimal_packet('C',0,"[C0]");
    insert_valid_minimal_packet('Z',0,"[Z0]");
}
void test_Parser_AddChar_should_IgnoreBadStartCharacters(void)
{
    TEST_ASSERT_NULL(Parser_AddChar('?'));
    TEST_ASSERT_NULL(Parser_AddChar('('));
    TEST_ASSERT_NULL(Parser_AddChar('a'));
    insert_valid_minimal_packet('D',0,"[D0]");
}
void test_Parser_AddChar_should_RejectBadCommandCharacters(void)
{
    TEST_ASSERT_NULL(Parser_AddChar('['));
    TEST_ASSERT_NULL(Parser_AddChar('a'));
    insert_valid_minimal_packet('A',0,"[A0]");

    TEST_ASSERT_NULL(Parser_AddChar('['));
    TEST_ASSERT_NULL(Parser_AddChar('('));
    TEST_ASSERT_NULL(Parser_AddChar('b'));
    TEST_ASSERT_NULL(Parser_AddChar(']'));
    insert_valid_minimal_packet('R',0,"[R0]");
}
int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_Parser_AddChar_should_StartLookingForCmdOnLeftBracket);
    RUN_TEST(test_Parser_AddChar_should_RejectNonBracketCharactersWhileSeekingStart);
    RUN_TEST(test_Parser_AddChar_should_AcceptAValidCommandCharacter);
    RUN_TEST(test_Parser_AddChar_should_RejectInvalidCommandCharacter);
    RUN_TEST(test_Parser_AddChar_should_AcceptLengthOfZero);
    RUN_TEST(test_Parser_AddChar_should_RejectInvalidLengths);
    RUN_TEST(test_Parser_AddChar_should_HandleBackToBackValidPacketsWithNoData);
    RUN_TEST(test_Parser_AddChar_should_IgnoreBadStartCharacters);
    RUN_TEST(test_Parser_AddChar_should_RejectBadCommandCharacters);
    RUN_TEST(test_Parser_AddChar_should_AcceptValidLengths);
    RUN_TEST(test_Parser_AddChar_should_RejectInvalidCharacter);
    RUN_TEST(test_Parser_AddChar_should_AcceptValidCharacter_while_NibblesRemaining);
    return UNITY_END();
}
