
#include "checking.h"
#include <iostream>

Checking::Checking(const std::string &name, float balance, float minbalance)
:Account(name,balance),minimum_balance(minbalance){

}

Checking::~Checking(){

}

void Checking::withdraw(float amount){
    if( (balance-amount) <= minimum_balance)
        std::cout<<"Insufficient balance (can't go below "<<get_minimum_balance()<<" )"<<std::endl;
    else
        Account::withdraw(amount);
}

float Checking::get_minimum_balance()const{

    return minimum_balance;
}
