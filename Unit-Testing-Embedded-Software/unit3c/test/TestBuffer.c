
#include "unity.h"
#include "Buffer.h"
#include "MK20DX256.h"
#define BUFFER_SIZE 1000

void test_Buffer_Put_and_Get_should_WorkTogetherToInsertAndExtractAValue(void)
{

    const uint16_t data[] = {0,1,0x5A,0x7FFF,0xFFF};

    uint16_t fetched;
    int i;

    for(i=0;i<5;i++)
    {
        TEST_ASSERT_EQUAL(0,Buffer_Put(data[i]));
        TEST_ASSERT_EQUAL(0,Buffer_Get(&fetched));
        TEST_ASSERT_EQUAL_HEX16(data[i],fetched);
    }
}

void test_Buffer_Get_should_ReturnErrorIfCalledWhenEmpty(void)
{
    uint16_t fetched;

    TEST_ASSERT_NOT_EQUAL(0,Buffer_Get(&fetched));
}

void test_Buffer_Put_should_ReturnErrorIfCalledWhenFull(void)
{
    int i;
    for(i=0;i<BUFFER_SIZE;i++)
    {
        TEST_ASSERT_EQUAL(0,Buffer_Put(i));
    }
    TEST_ASSERT_NOT_EQUAL(0,Buffer_Put(1));

    
}
int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_Buffer_Put_and_Get_should_WorkTogetherToInsertAndExtractAValue);
    RUN_TEST(test_Buffer_Get_should_ReturnErrorIfCalledWhenEmpty);
    RUN_TEST(test_Buffer_Put_should_ReturnErrorIfCalledWhenFull);
    return UNITY_END();
}
