#include "Integer.h"
#include <iostream>

Integer::Integer(){ // Default constructor
    std::cout<<"Integer()"<<std::endl;
    m_pInt = new int(0);
}

Integer::Integer(int value){ // Parameterized construcot
    std::cout<<"Integer(int)"<<std::endl;
    m_pInt = new int(value);

}

Integer::Integer(const Integer & obj){ // Copy constructor

    std::cout<<"Integer(const Integer &)"<<std::endl;
    m_pInt = new int(*obj.m_pInt);
}

Integer::Integer(Integer && obj){ // Move constructor

    std::cout<<"Integer(Integer &&)"<<std::endl;
    m_pInt = obj.m_pInt;
    obj.m_pInt = nullptr;
}

int Integer::GetValue()const{
    return *m_pInt;
}

void Integer::SetValue(int value){

    *m_pInt = value;
}

Integer::~Integer(){
    std::cout<<"~Integer()"<<std::endl;
    delete m_pInt;
}

Integer Integer::operator+(const Integer & a)const{
    Integer temp;
    *temp.m_pInt = *m_pInt + *a.m_pInt;
    return temp;

}

Integer &Integer::operator++() { // pre-increment operator: first icnrement then return
    ++(*m_pInt);
    return *this;
}

Integer Integer::operator++(int){ // post increment: first incremen,t then return: need to specify int to distinguish and create a tem pvalue
    Integer temp(*this);
    ++(*m_pInt);
    return temp;

}

Integer &Integer::operator=(const Integer &a){
    if(this != &a){
    delete m_pInt;
    m_pInt=new int(*a.m_pInt);}
    return *this;
}

Integer &Integer::operator=(Integer &&a){ //move operator

        if(this != &a){
    delete m_pInt;
    m_pInt=a.m_pInt;
    a.m_pInt=nullptr;}
    return *this;
}

Integer::operator int(){
    return *m_pInt;
    
}