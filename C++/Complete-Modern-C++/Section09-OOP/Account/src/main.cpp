#include <iostream>
#include "savings.h"
#include "checking.h"
#include "transaction.h"
#include <typeinfo>

int main()
{
    /*
    Savings acc("Bob",1000,0.5f);
    std::cout<<acc.get_balance()<<std::endl;
    acc.deposit(200);
    acc.accumulate_interest();
    acc.withdraw(380);
    std::cout<<acc.get_balance()<<std::endl;

    Checking check("Charles",75);
    std::cout<<check.get_balance()<<std::endl;
    check.withdraw(50);
    
    transaction(&check);
    */

   /*
    Account* ptr = new Savings("aaa",50,0.5f);
    delete ptr;
    */
/*
   Savings ch("Bob",100,40);
   transaction(&ch);
   */
/*
    int i{};
    float f{};
    const std::type_info &ti = typeid(i);
    std::cout<<ti.name()<<std::endl;
*/
/*
    Account acc("AAAA",50);
    acc.withdraw(100);
    std::cout<<std::endl;
    Account::print_total_account_number();

    Account acc2(acc);
    Account acc3 = acc2;

    std::cout<<acc2.get_name()<<acc2.get_balance();
    std::cout<<acc3.get_name()<<acc3.get_balance();

    std::cout<<std::endl;
    friend_print(acc3);
    std::cout<<std::endl;
    std::cout<<acc2;
    std::cout<<acc3;

    */
/*
   Savings sav("bab",5,4);
   Checking chk("bab",4,8);
*/


    Account *ptr = new Savings ("bab",7,8);
    std::cout<<ptr->get_interest_rate();
    std::cout<<"\n"<<sizeof(Account);

       delete ptr;
    ptr = nullptr;
    

    Savings cho("opopopo",7,8);
    Account *ch_ptr = &cho;

    std::cout<<ch_ptr->get_interest_rate();
    std::cout<<std::endl;
    Account ch_slice = cho;
    std::cout<<ch_slice.get_interest_rate();

    Checking *ptr_pap = static_cast<Checking*> (ch_ptr);

    const std::type_info & ti = typeid(cho);
    std::cout<<"\n\n\n    hahahah     "<<std::endl;
    std::cout<<ti.name();


    return 0;
}