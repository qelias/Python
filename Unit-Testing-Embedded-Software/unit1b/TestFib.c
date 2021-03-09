
#include "unity.h"
#include "Fib.h"
#include <limits.h>

#define DIMENSION_OF(a) (sizeof(a))/(sizeof(a[0]))

void test_element0_should_return1(void)
{
    TEST_ASSERT_EQUAL_INT(1,Fibonacci_GetElement(0));
}
void test_element1_should_return1(void)
{
    TEST_ASSERT_EQUAL_INT(1,Fibonacci_GetElement(1));
}
void test_element2_should_return2(void)
{
    TEST_ASSERT_EQUAL_INT(2,Fibonacci_GetElement(2));
}
void test_part_of_the_sequence(void)
{   
    /*
    TEST_ASSERT_EQUAL_INT(3,Fibonacci_GetElement(3));
    TEST_ASSERT_EQUAL_INT(5,Fibonacci_GetElement(4));
    TEST_ASSERT_EQUAL_INT(8,Fibonacci_GetElement(5));
    TEST_ASSERT_EQUAL_INT(13,Fibonacci_GetElement(6));
    TEST_ASSERT_EQUAL_INT(21,Fibonacci_GetElement(7));
    TEST_ASSERT_EQUAL_INT(34,Fibonacci_GetElement(8));
    TEST_ASSERT_EQUAL_INT(55,Fibonacci_GetElement(9));
    TEST_ASSERT_EQUAL_INT(89,Fibonacci_GetElement(10));
    */

    int expected[] = {1,1,2,3,5,8,13,21,34,55,89,144};
    int i=0;
    for (i=0;i<DIMENSION_OF(expected);i++)
    {
        TEST_ASSERT_EQUAL_INT(expected[i],Fibonacci_GetElement(i));
    }
}
void test_overflow_return_0(void)
{
    const int first_bad_element = 46;
    const int last_good_element = first_bad_element-1;
    int last_good_value = Fibonacci_GetElement(last_good_element);

    TEST_ASSERT_EQUAL_INT_MESSAGE(4,sizeof(int),"constants first_bad_element and FIB_MAX_ELEMENT must be changed");
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_GetElement(first_bad_element));
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_GetElement(INT_MAX));
    TEST_ASSERT_MESSAGE(last_good_value>1,"This value should not have beena rollover");
}
void test_negative_element_return_0(void)
{
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_GetElement(-1));
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_GetElement(-3));
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_GetElement(-555));
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_GetElement(INT_MIN));
}

void test_fibo_part_of_isinsequence(void)
{
    int expected_true[] = {1,2,3,5,8,13,21,34,55,89,144};
    int expected_false[] = {0,4,6,7,9,10,11,22,35,67};
    int i;

    for(int i=0;i<DIMENSION_OF(expected_true);i++)
    {
        TEST_ASSERT_EQUAL_INT(1,Fibonacci_IsInSequence(expected_true[i]));
    }
    for(int i=0;i<DIMENSION_OF(expected_false);i++)
    {
        TEST_ASSERT_EQUAL_INT(0,Fibonacci_IsInSequence(expected_false[i]));
    }
}

void test_fibo_isinsequence_negative_return_0(void)
{
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_IsInSequence(-1));
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_IsInSequence(-3));
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_IsInSequence(-555));
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_IsInSequence(INT_MIN));
}
void test_fibo_isinsequence_overflow_return_0(void)
{
    const int first_bad_element = 46;
    const int first_bad_value = Fibonacci_GetElement(46);
    const int last_good_element = first_bad_element-1;
    const int last_good_value = Fibonacci_GetElement(last_good_element);
    TEST_ASSERT_EQUAL_INT_MESSAGE(4,sizeof(int),"constants first_bad_element and FIB_MAX_ELEMENT must be changed");
    TEST_ASSERT_EQUAL_INT(0,Fibonacci_IsInSequence(first_bad_value));
    TEST_ASSERT_EQUAL_INT(1,Fibonacci_IsInSequence(last_good_value));
    
}


int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_element0_should_return1);
    RUN_TEST(test_element1_should_return1);
    RUN_TEST(test_element2_should_return2);
    RUN_TEST(test_part_of_the_sequence);
    RUN_TEST(test_negative_element_return_0);
    RUN_TEST(test_overflow_return_0);
    RUN_TEST(test_fibo_part_of_isinsequence);
    RUN_TEST(test_fibo_isinsequence_negative_return_0);
    RUN_TEST(test_fibo_isinsequence_overflow_return_0);
    return UNITY_END();
}
