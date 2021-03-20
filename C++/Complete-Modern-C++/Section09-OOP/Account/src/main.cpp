#include <iostream>
#include "savings.h"
#include "checking.h"
#include "transaction.h"
#include <typeinfo>

int main()
{
    /*
    Savings acc("Bob",1000,0.5f);
    std::cout<<acc.get_balance()<<std::endl;
    acc.deposit(200);
    acc.accumulate_interest();
    acc.withdraw(380);
    std::cout<<acc.get_balance()<<std::endl;

    Checking check("Charles",75);
    std::cout<<check.get_balance()<<std::endl;
    check.withdraw(50);
    
    transaction(&check);
    */

   /*
    Account* ptr = new Savings("aaa",50,0.5f);
    delete ptr;
    */

   Savings ch("Bob",100,40);
   transaction(&ch);
/*
    int i{};
    float f{};
    const std::type_info &ti = typeid(i);
    std::cout<<ti.name()<<std::endl;
*/

    Account acc("AAAA",50);
    acc.withdraw(100);
    return 0;
}