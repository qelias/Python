#include "transaction.h"
#include <iostream>

void transaction(Checking* check){
    std::cout<<"Transaction started"<<std::endl;
    std::cout<<"Initial balance "<<check->get_balance()<<std::endl;
    check->deposit(100);
    check->accumulate_interest();
    check->withdraw(170);
    std::cout<<"Interest rate " <<check->get_interest_rate()<<std::endl;
    std::cout<<"Final balance "<<check->get_balance()<<std::endl;

}