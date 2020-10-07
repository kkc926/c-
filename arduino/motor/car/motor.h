#pragma once

#include<Arduino.h>

class Motor{
    protected:
    int in1;
    int in2;
    int en; //PWM제어

public:
    Motor(int in1, int in2, int en);

    void forward(int speed=200); //전진 디폴드값은 헤더에서 지정한다
    void backward(int speed=200); //후진
    void stop(); //정지
    void setSpeed(int speed);
};




