#include "account.h"
#include <iostream>


//Static variables
int Account::total_number_of_accounts = 1000;


// Manager functions (constructor, destructor)
Account::Account(const std::string &name,float balance)
:name(name),balance(balance){
    std::cout<<"Account()"<<std::endl;
    account_number=++total_number_of_accounts;

    }

Account::~Account(){
    std::cout<<"~Account()"<<std::endl;
    --total_number_of_accounts;
}

// Accessor functions def
const std::string Account::get_name()const{
    return this->name;
}

float Account::get_balance()const{

    return balance;
}

int Account::get_account_number()const {

    return account_number;
}

float Account::get_interest_rate()const{ // Depends on type of account: adapt later through inheritance

    return 0.0f;
}

// Mutator functions
void Account::accumulate_interest(){

}

void Account::withdraw(float amount){
    try{
        if(amount < balance)
            balance-= amount;
        else
            throw std::out_of_range("Insufficient balance");
            //std::cout<<"Insufficient balance"<<std::endl;
    }
    catch (std::exception &ex){

        std::cout<<ex.what()<<std::endl;
    }
}

void Account::deposit(float amount){
    balance+=amount;
}