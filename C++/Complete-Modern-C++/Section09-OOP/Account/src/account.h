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

    Account(const Account &a);
    Account operator = (const Account &a); 

    // Accessor member functions

    const std::string get_name() const;
    float get_balance() const;
    int get_account_number() const;
    virtual float get_interest_rate() const;
    static void print_total_account_number();

    friend void friend_print(Account a);

    // Mutator member functions

    virtual void accumulate_interest();
    virtual void withdraw(float amount);
    void deposit(float amount);


    friend void operator << (std::ostream &b, const Account &a);


};
#endif