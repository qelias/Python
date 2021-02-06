#include <iostream>
#include <stdlib.h>
#include <stdio.h>


int main(){


    int *ptr1 = (int*)malloc(sizeof(int));
    *ptr1 = 18;
    std::cout<<*ptr1<<std::endl;
    free(ptr1);

    int *ptr2 = (int *)calloc(1,sizeof(int));
    *ptr2 = 15;
    free(ptr2);

    int *ptr3 = (int *)malloc(sizeof(int)*5);

    int *ptr4 = new int; // with new: no need to specify the size, but neezd to free it with delete
    int *ptr5 = new int(78);

    delete ptr4, ptr4;

    int *ptr6 = new int [7];
    for (int i =0; i<7; i++)
    {
        ptr6[i]=i;
    }
    return 0;   
}