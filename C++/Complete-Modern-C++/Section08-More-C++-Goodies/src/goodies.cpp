#include <iostream>



int main()
{   
    enum Weekdays: char{Monday=4,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday};
    Weekdays a=Monday;
    a=Wednesday;
    a=Sunday;
    int b = a;
    enum class Workdays: char{Monday=7,Tuesday,Wednesday,Thursday,Friday};
    Workdays A=Workdays::Monday;


    return 0;
}