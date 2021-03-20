#ifndef CHECKING_H
#define CHECKING_H  


#include "account.h"


class Checking final:public Account{

    private:
        float minimum_balance;

    public:
        using Account::Account;
        Checking(const std::string &name, float balance, float minbalance);
        ~Checking();

        // Accessor
        float get_minimum_balance()const;

        // Mutator
        void withdraw(float amount) override;
};



#endif