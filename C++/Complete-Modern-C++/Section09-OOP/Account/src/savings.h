#ifndef SAVINGS_H
#define SAVING_H

#include "account.h"

class Savings final:public Account{

    private:
        float rate;



    public:
        Savings(const std::string &name, float balance, float rate);
        ~Savings();

        // Accessor
        float get_interest_rate()const override;

        // Mutator
        void accumulate_interest() override;
};

#endif