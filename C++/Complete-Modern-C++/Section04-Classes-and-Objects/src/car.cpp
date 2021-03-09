#include "car.h"
#include <iostream>


int Car::totalCount = 0;

Car::Car(){
    totalCount++;
    fuel = 0;
    speed = 0;
    passengers =0;

    std::cout<<"default constructor"<<std::endl;

}
Car::Car(float amount, float initial_speed, int initial_passengers){
    totalCount++;
    fuel = amount;
    speed = initial_speed;
    passengers =initial_passengers;
    std::cout<<"full car construcor"<<std::endl;
}
Car::Car(float amount){
    totalCount++;
    fuel = amount;
    std::cout<<"initial fuel constructor"<<std::endl;
}
Car::~Car(){
    totalCount--;
    std::cout <<"Car() object destroyed"<<std::endl;
}

void Car::FillFuel(float amount){
    fuel = amount;
}

void Car::Accelerate(){

    speed++;
    fuel -= 0.5f;
}

void Car::Brake(){

    speed=0;
}

void Car::AddPassengers(int count){

    passengers=count;
}

void Car::Dashboard(){
    std::cout<<"Total cars:"<<totalCount<<std::endl;
    std::cout<<"Fuel "<<fuel<<std::endl;
    std::cout<<"Passengers "<<passengers<<std::endl;
    std::cout<<"Speed "<<speed<<std::endl;
}

void Car::ShowCount(){
std::cout<<"Total cars:"<<totalCount<<std::endl;

}