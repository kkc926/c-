#include "motor.h"

Motor right(6,7,5);
Motor left(8,9,10);

void setup()
{

}

void loop()
{
        //전진
    left.forward();
    right.forward();
    delay(2000);

    //정지
    left.stop();
    right.stop();
    delay(2000);

    //후진
    left.backward();
    right.backward();
    delay(2000);
    
    //정지
    left.stop();
    right.stop();
    delay(2000);

    
}

