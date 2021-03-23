
#ifndef DEFINITION_H
#define DEFINITION_H

#include <utility>
#include <iostream>
#include <string>


class Employee{
    public: // just to print easier later ...
    std::string name;
    int id;
    int salary;

    
        Employee(std::string init_name,int init_id, int init_salary)
                :name(init_name),id(init_id),salary(init_salary){};
};
class Contact{
    public: // just to print easier later ...
    std::string name;
    int phone_number;
    std::string address;
    std::string email;

   
        Contact(std::string init_name, int init_phone_number,std::string init_address,
                std::string init_email)
                :name(init_name),phone_number(init_phone_number),address(init_address),
                email(init_email){};
};

void factory(){}
template<typename T, typename...Params>
T* factory(Params...args){

     return new T (Params(args)...);
   
};


#endif
