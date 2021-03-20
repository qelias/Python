#ifndef ACCOUNT_H
#define ACCOUNT_H

#include <string>

class Account
{

private:
    std::string name;
    int account_number;
    static int total_number_of_accounts;

protected:
    float balance;

public:
    Account(const std::string &name, float balance); // constructor
    virtual ~Account();                                      // destructor

    // Accessor member functions

    const std::string get_name() const;
    float get_balance() const;
    int get_account_number() const;
    virtual float get_interest_rate() const;

    // Mutator member functions

    virtual void accumulate_interest();
    virtual void withdraw(float amount);
    void deposit(float amount);
};
#endif