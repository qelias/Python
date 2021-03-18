
#include "checking.h"
#include <iostream>
/*
Checking::Checking(const std::string &name, float balance)
:Account(name,balance){

}
*/
Checking::~Checking(){

}

void Checking::withdraw(float amount){
    if( (balance-amount) <=50)
        std::cout<<"Insufficient balance (can't go below 50)"<<std::endl;
    else
        Account::withdraw(amount);
}

