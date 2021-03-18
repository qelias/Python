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
    ~Account();                                      // destructor

    // Accessor member functions

    const std::string get_name() const;
    float get_balance() const;
    int get_account_number() const;
    float get_interest_rate() const;

    // Mutator member functions

    void accumulate_interest();
    void withdraw(float amount);
    void deposit(float amount);
};
#endif