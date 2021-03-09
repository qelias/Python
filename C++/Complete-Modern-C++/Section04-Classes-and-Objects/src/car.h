#pragma once

class Car{
    private:
        float fuel = 0;
        float speed = 0;
        int passengers = 1;
        static int totalCount;
    public:
        Car(); // Constructor
        Car(float amount, float initial_speed, int initial_passengers); // Parametrized constructor
        Car(float amount);
        ~Car();
        void FillFuel(float amount);
        void Accelerate();
        void Brake();
        void AddPassengers(int count);
        void Dashboard();
        static void ShowCount();
};