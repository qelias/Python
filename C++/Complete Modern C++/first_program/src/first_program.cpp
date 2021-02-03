#include <iostream>
#include "foo.h"
#include "add.h"


int main(){
    using namespace std;
    cout << "Hello C++ World ! " << " hehe" << endl;

    foo();

    cout<<add(7,8)<<endl;
    return 0;

}