#include <iostream>


int Add (int a, int b){
    return a + b;
}

double Add(double a, double b){
    return a + b;
}

#define Square(x) x*x

inline int Cube(int x){

    return x*x*x;
}


void Print(int count, char ch){
    using namespace std;
    for(int i=0; i<count;i++){
        cout<<ch;
    }cout<<endl;

}

int main(){


    using namespace std;
    cout<<Add(5,4)<<endl;
    cout<<Add(5.5,7.36)<<endl;
    cout<<Square(7)<<endl;
    cout<<Cube(2)<<endl;

    Print(5,'#');
    cout<<endl;
    void (*pfn) (int, char) = &Print;
    (*pfn)(8,'t');
    pfn(4,'R');

    return 0;
}