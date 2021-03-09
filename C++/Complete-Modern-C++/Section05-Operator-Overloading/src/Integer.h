#pragma once
#include <iostream>

class Integer{

    int *m_pInt;
public:
    Integer();
    Integer(int value);
    Integer(const Integer &obj);
    Integer(Integer && obj);

    int GetValue()const; // Does not modify the state of the object: should be labelled with const
    void SetValue(int value);
    ~Integer();

    Integer operator +(const Integer & a)const;
    Integer & operator ++();
    Integer operator ++(int);
    Integer & operator=(const Integer & a);
    Integer & operator=(Integer &&a);

    operator int();


};

