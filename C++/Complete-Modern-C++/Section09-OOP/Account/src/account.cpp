#include "account.h"
#include <iostream>

void friend_print(Account a){

    std::cout<<a.name<<" "<<a.balance<<std::endl;
}

//Static variables
int Account::total_number_of_accounts = 1000;


// Manager functions (constructor, destructor)
Account::Account(const std::string &name,float balance)
:name(name),balance(balance){
    std::cout<<"Account()"<<std::endl;
    account_number=++total_number_of_accounts;

    }

Account::Account(const Account &a)
:name(a.name),balance(a.balance){
    std::cout<<"Account() Copy cstr"<<std::endl;
    account_number=++total_number_of_accounts;
    
}
Account Account::operator = (const Account &a){

    return Account(a);

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


void Account::print_total_account_number(){
    std::cout<<Account::total_number_of_accounts<<std::endl;
}

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

void operator << (std::ostream &cout, const Account &a){

    cout<<"my name is "<<a.name<<" and my balance is "<<a.balance<<std::endl;
}