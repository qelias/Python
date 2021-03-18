#include <iostream>
#include "savings.h"
#include "checking.h"
#include "transaction.h"

int main()
{
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
    return 0;
}