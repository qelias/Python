#pragma once

class Car{
    private:
        float fuel;
        float speed;
        int passengers;
    public:
        Car(); // Constructor
        Car(float amount, float initial_speed, int initial_passengers); // Parametrized constructor
        ~Car();
        void FillFuel(float amount);
        void Accelerate();
        void Brake();
        void AddPassengers(int count);
        void Dashboard();
};