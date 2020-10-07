#include "car.h"

Car::Car(int in1, int in2, int en1, int in3, int in4, int en2):
    right(in1,in2,en1), left(in3,in4,en2){
}
void Car::forward(int speed){      //전진
    right.forward(speed);
    left.forward(speed);

    
}
void Car::backward(int speed){      //후진
    right.backward(speed);
    left.backward(speed);
}
void Car::turnLeft(int speed){      //좌회전
    right.forward(speed);
    left.backward(speed);

}
void Car::turnRight(int speed){      //우회전
    right.backward(speed);
    left.forward(speed);

}
void Car::setSpeed(int rightSpeed,int leftSpeed){
    right.setSpeed(rightSpeed);
    left.setSpeed(leftSpeed);
}
void Car::stop(){                      //정지
    right.stop();
    left.stop();
}






