#include <iostream>
#include "car.h"


struct Point{
    int x;
    int y;

};

void DrawLine(int x1, int y1, int x2, int y2){


}
void DrawLine(Point start, Point end){


}

int main(){
    Car::ShowCount();
    // Car car; // instanciate
    Car car(8), c1(7,8,9), c2, c3;

    Car c4(c1); // default copy constructor
    car.FillFuel(6);
    car.Accelerate();
    car.Accelerate();
    car.Accelerate();
    car.Accelerate();

    car.Dashboard();
    c4.Dashboard();

    Car::ShowCount();

    return 0;
}