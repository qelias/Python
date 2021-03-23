#include <iostream>
#include <cstring>
#include "template_definitions.h"


int main(){

    std::cout<<max(3,8)<<std::endl;
    int size = 5;
    int fsize=3;
    /*
    int* arr = new int[size];
    for(int i=0;i<size;i++)
    arr[i]=i*i;
    */
   int arr[]{3,5,7,8,9};
    float farr[]{7.7,8.2,3.445};

/*
    std::cout<<array_sum(arr,size)<<std::endl;
    std::cout<<array_sum(farr,fsize)<<std::endl;
*/
    std::cout<<array_sum(arr)<<std::endl;
    std::cout<<array_sum(farr)<<std::endl;

    std::cout<<array_max(arr,size)<<std::endl;
    std::cout<<array_max(farr,fsize)<<std::endl;

    auto a = minmax(arr,size);
    auto b = minmax(farr,fsize);

    std::cout<<a.first<<" "<<a.second<<std::endl;
    std::cout<<b.first<<" "<<b.second<<std::endl;
    
    int (*pfn)(int,int) = max; // taking adress of function -> instantiation

    pfn(5,7);

    max(static_cast<float>(3),7.8f);
    max<double>(7,7.8);

    const char *AA{"A"};
    const char *BB{"B"};
    std::cout<<max(AA,BB)<<std::endl;

    Print<3>();


    list_print({4,5,7,8});
    variadic_print(7.5,4,2.22,"A");
    return 0;
}