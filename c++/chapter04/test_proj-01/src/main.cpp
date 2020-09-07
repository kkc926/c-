#include <iostream>
#include <string>
#include "Car.hpp"
#include "PrintData.hpp"
using namespace std;
int main(int argc, char const *argv[])
{
    Car myCar;
    myCar.setSpeed(100);
    cout << "속도 : " << myCar.getSpeed() << endl;
 


    PrintData prn;
    prn.print(1);
    prn.print(3.14);
    prn.print("C++ is cool");
    prn.print();
    return 0;

}

