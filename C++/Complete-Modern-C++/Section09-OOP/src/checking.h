#ifndef CHECKING_H
#define CHECKING_H  


#include "account.h"


class Checking:public Account{

    public:
        using Account::Account;
        //Checking(const std::string &name, float balance);
        ~Checking();

        // Mutator
        void withdraw(float amount);
};



#endif