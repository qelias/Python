#include <iostream>
#include "Integer.h"
#include <memory>


// Global overloaded operator
/*
Integer operator +(const Integer &a, const Integer &b){
    Integer temp;
    temp.SetValue(a.GetValue() + b.GetValue());
    return temp;

}
*/

// void CreateInteger(){
//     Integer *p = new Integer;
//     p->SetValue(3);
//     std::cout<<p->GetValue()<<std::endl;
// }
void Process(std::unique_ptr<Integer> ptr){
    std::cout<<ptr->GetValue()<<std::endl;
}
void CreateInteger(){
    std::unique_ptr<Integer> p(new Integer);
    p->SetValue(3);
    Process(std::move(p));
    
    //std::cout<<p->GetValue()<<std::endl;

}

Integer operator +(int x, const Integer &y){
    Integer temp;
    temp.SetValue(x + y.GetValue());
    return temp;

}



std::ostream & operator <<(std::ostream & out, const Integer &a){

    out << a.GetValue();
    return out;
}

int main(){


    // Integer a(1), b(5);
    // ++a;
    // a++;
    // Integer sum = a + b;

    // std::cout<<sum.GetValue()<<std::endl;;

    // Integer c;
    // c = a;
    
    // Integer sum1 = a + 5;
    // Integer sum2 = 5 + a;

    // std::cout<<sum1.GetValue()<<std::endl;
    // std::cout<<sum2.GetValue()<<std::endl;

    // std::cout<<sum1<<std::endl;

    CreateInteger();



    int a=5, b=2;
    float f = static_cast<float> (a) / b;
    //char *p = static_cast<char>(&a);
    std::cout<<f<<std::endl;


    Integer a1{5};
    int x = a1;
    std::cout<<x<<std::endl;
    return 0;   
}