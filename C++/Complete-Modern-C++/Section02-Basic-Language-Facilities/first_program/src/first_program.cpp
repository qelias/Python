#include <iostream>
#include "foo.h"
#include "add.h"


int main(){
    using namespace std;
    //cout << "Hello C++ World ! " << " hehe" << endl;

    int x = 17;
    int y = 12;

    int a1; // Declaration without intialization: gargabge value
    int a2=2; // Copy initilization
    int a3(5); // Direct initialization
    
    char d1[8];
    char d2[8] = {'a','b','c','d'}; // Aggregate initialization (Copy initilization)
    char d3[8] = {"text"}; // Copy initilization


    // Uniform initialization

    int b1{}; //Value initilization: default value is 0
    int b2{5}; // Direct initialization
    // int b3(); // Creates a function ! "Most vexing parse"


    char e1[8]{}; // Default values
    char e2[8]{"Hello"}; // Direct initiialization

    int *p1 = new int;
    int *p2 = new int{};
    char *p3 = new char[8]{};
    // char *p4 = new char[8]{"Hello"}; // -fpermissive ?

    //foo();

    //cout<<add(x,y)<<endl;

    cout << &x << endl;
    int *ptr1 = &x;
    *ptr1 = 99;
    int w = *ptr1;
    int *ptr2 = ptr1;
    //int *ptr3 = *ptr1;
    cout << "ptr1 = "<<ptr1<< " *ptr1 = "<<*ptr1<<" x = "<<x<<endl;

    int *ptr4 = nullptr;

    int z = 78; // Variable or Referent
    int &ref = z; // Reference to z, or alias (other name for the variable z)

    z = 75;

    ref = 18;

    return 0;

}