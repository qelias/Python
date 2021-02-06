#include <iostream>


void Swap( int x, int y){

    int temp = x;
    x = y;
    y = temp;

}

void ptr_Swap( int *x, int *y){

    int temp = *x;
    *x = *y;
    *y = temp;

}

void ref_Swap( int &x, int &y){

    int temp = x;
    x = y;
    y = temp;

}

void ptr_Print( int *ptr){
    if (ptr != nullptr)
    std::cout<<*ptr<<std::endl;
}

void ref_Print( int &ptr){

    std::cout<<ptr<<std::endl;
}

int main(){

    using namespace std;

        int a =5, b = 10;
        Swap(a,b);
        cout << "a = " << a << " b = " << b << endl;

        ptr_Swap(&a,&b);

        cout << "a = " << a << " b = " << b << endl;

        ref_Swap(a,b);

        cout << "a = " << a << " b = " << b << endl;

       
        const float PI {3.1415f};

        const int CHUNK_SIZE = 512;
        const int *ptr = &CHUNK_SIZE;

        int x = 5;
        const int MAX = 12;
        int &ref_x1 = x;
        const int &ref_x2 = x;
        ref_x1 = 1;
        // ref_x2 = 3; need to be a modifiable value


        const int *ptr1 = &x;
        int *const ptr2 = &x;
        const int *const ptr3 = &x;

        // ptr1 = nullptr; OK
        // *ptr1 = 8; need to be modifiable

        // ptr2 = nullptr; address need to be modifiable
        *ptr2 = 9;

        // ptr3 = nullptr; both need to be modifiable
        // *ptr3 = 18;


        const int *ptr4 = &MAX;
        // int *ptr5 = &MAX;

        const int &r1 = ref_x1;
        // r1 = 7;
        ref_x1 = 7;

        //int &r2 = ref_x2;
        const int &r2 = ref_x2;

        // int *&p_ref1 = ptr1;
        const int *&p_ref1 = ptr1;

        //const int *&p_ref2 = ptr2;
        const int * const &p_ref2 = ptr2;

    return 0;
}