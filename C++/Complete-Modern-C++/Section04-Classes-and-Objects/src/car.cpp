#include "car.h"
#include <iostream>


Car::Car(){

    fuel = 0;
    speed = 0;
    passengers =0;

    std::cout<<"Car object created"<<std::endl;

}
Car::Car(float amount, float initial_speed, int initial_passengers){

    fuel = amount;
    speed = initial_speed;
    passengers =initial_passengers;
    std::cout<<"yohoho"<<std::endl;
}

Car::~Car(){

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

    std::cout<<"Fuel "<<fuel<<std::endl;
    std::cout<<"Passengers "<<passengers<<std::endl;
    std::cout<<"Speed "<<speed<<std::endl;
}