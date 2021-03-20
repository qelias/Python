
#include "savings.h"
#include <iostream>

Savings::Savings(const std::string &name, float balance, float rate)
:Account(name,balance),rate(rate){
    std::cout<<"Savings()"<<std::endl;
}

Savings::~Savings(){
std::cout<<"~Savings()"<<std::endl;
}

float Savings::get_interest_rate()const{
    return rate;
}

void Savings::accumulate_interest(){
    balance+=(balance*rate);
}