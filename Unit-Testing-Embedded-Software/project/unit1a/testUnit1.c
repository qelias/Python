
#include "unity.h"

void test_TheFirst(void)
{
    //TEST_IGNORE_MESSAGE("Implement Me");
    TEST_ASSERT_MESSAGE(1==2,"1 did not equal 2");
    TEST_ASSERT(2==2);
}

void bla(void)
{
    TEST_ASSERT_EQUAL(3,4);
}

void foo(void)
{
    TEST_ASSERT_EQUAL(1.1,1.2);
    TEST_ASSERT_TRUE('a'=='a');
    TEST_ASSERT_FALSE(8 > 7.7);
}

void bar(void)
{
    TEST_ASSERT_EQUAL_FLOAT(1.1,1.2);
    TEST_ASSERT_EQUAL_INT32(-1,0xFFFFFFFF);
}


int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_TheFirst);
    RUN_TEST(bla);
    RUN_TEST(foo);
    RUN_TEST(bar);
    return UNITY_END();
}
