#include <iostream>
#include <cstring>
#include "template_definitions.h"

struct A{
    char a;
    int c;
};

struct B{
    char a;
    short b;
    int c;
    short d;
    char e;
    
    
};


int main(){

    int *p1 = factory<int>(5);
    std::cout<<*p1<<" at "<<p1<<" "<<std::endl;
    std::string *s = factory<std::string>();
    *s = "hello world ?";
    std::cout<<*s<<" at "<<s<<" "<<std::endl;
    char *p2 = factory<char>('W');
    std::cout<<*p2<<" at "<<p2<<" "<<std::endl;
    Employee *emp1 = factory<Employee>("Bob",4,1200);
    std::cout<<emp1->name<<" "<<emp1->id<<" "<<emp1->salary<<std::endl;
    Contact *cont1 = factory<Contact>("John",473505461,"Street road 9","a@pmail.com");
    std::cout<<cont1->name<<" "<<cont1->phone_number<<" "<<cont1->address
    <<" "<<cont1->email<<" "<<std::endl;


    std::cout<<std::endl;
    std::cout<<std::endl;
    std::cout<<sizeof(A)<<std::endl;
    std::cout<<sizeof(B)<<std::endl;
    return 0;
}