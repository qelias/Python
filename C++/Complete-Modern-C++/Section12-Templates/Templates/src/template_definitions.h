
#ifndef DEFINITION_H
#define DEFINITION_H

#include <utility>
#include <iostream>
#include <cstring>

template <typename T>
T max (T x, T y){
    return x > y ? x : y ;
}

template char max(char x, char y); // Explicit instantiation

template <> const char* max<const char*>(const char* x, const char* y){
    std::cout<<"max specilaization for char\n";
    return strcmp(x,y)>0 ? x:y;
}
/*
template <typename T>
T array_sum(T *pArr,int size){

    T sum=0;
    for(int i=0;i<size;i++)
        sum+=pArr[i];
    return sum;
}
*/

template <typename T, int size>
T array_sum(T (&arr)[size]){

    T sum=0;
    for(int i=0;i<size;i++)
        sum+=arr[i];
    return sum;
}

template <typename AAAA>
AAAA array_max(AAAA *arr, int size){

    AAAA temp = arr[0];
    for(int i=1;i<size;++i){
        if(arr[i]>temp)
            temp=arr[i];
    }
    return temp;
}


template <typename T>
std::pair<T,T> minmax(T *arr,int size){

    std::pair<T,T> result;
    T temp_min=arr[0];
    T temp_max=arr[0];
    for(int i=1;i<size;++i){
        if(arr[i]<temp_min)
            temp_min=arr[i];
        if(arr[i]>temp_max)
            temp_max=arr[i];
    }
    result.first=temp_min;
    result.second=temp_max;
    return result;
}

template<int size>
void Print(){
    std::cout<<size<<std::endl;
}

template<typename T>
void list_print(std::initializer_list<T> args){
    for(const auto &x : args)
        std::cout<<x<<" ";
    std::cout<<std::endl;
}

void variadic_print(){} // base case function with 0 arg to stop recursion (need to be declared first)
template<typename T, typename...Params> // need recursion to access elements individually
void variadic_print(const T &a, const Params&... args){
    std::cout<<"number of params in param pack = "<<sizeof...(args)<<std::endl;
    std::cout<<a<<" "<<std::endl;
    if(!sizeof...(args))
        std::cout<<"end of recursion "<<std::endl;
    variadic_print(args...); // # of args reduced by 1 each time
}



#endif
