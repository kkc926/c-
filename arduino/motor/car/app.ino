#include "car.h"

Car car(6,7,5,8,9,10);

void setup()
{

}

void loop()
{
        //전진
    car.forward();
    delay(2000);

    //정지
    car.stop();
    delay(2000);

    //후진
    car.backward();
    delay(2000);
    
    //정지
    car.stop();
    delay(1000);

 
    car.turnLeft();
    delay(1000);

    //정지
    car.stop();
    delay(1000);


    car.turnRight();
    delay(1000);    

       //정지
    car.stop();
    delay(1000);
}

