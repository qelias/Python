#include "transaction.h"
#include <iostream>
#include "checking.h"
void transaction(Account* acc){
    std::cout<<"Transaction started"<<std::endl;
    std::cout<<"Initial balance "<<acc->get_balance()<<std::endl;
    acc->deposit(100);
    acc->accumulate_interest();
/*
    if (typeid(*acc) == typeid(Checking)){
        Checking* p_acc = static_cast<Checking*> (acc);
        std::cout<<"Minimum balance is "<<p_acc->get_minimum_balance()<<std::endl;
    }
*/
    Checking* p_checking = dynamic_cast<Checking*> (acc);
    if (p_checking != nullptr)
        std::cout<<"Minimum balance is "<<p_checking->get_minimum_balance()<<std::endl;
    acc->withdraw(170);
    std::cout<<"Interest rate " <<acc->get_interest_rate()<<std::endl;
    std::cout<<"Final balance "<<acc->get_balance()<<std::endl;

}