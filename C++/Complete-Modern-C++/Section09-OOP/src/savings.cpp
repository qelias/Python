
#include "savings.h"

Savings::Savings(const std::string &name, float balance, float rate)
:Account(name,balance),rate(rate){

}

Savings::~Savings(){

}

float Savings::get_interest_rate()const{
    return rate;
}

void Savings::accumulate_interest(){
    balance+=(balance*rate);
}