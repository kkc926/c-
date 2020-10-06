//우측바퀴
int IN1 =6;
int IN2 =7;
int EN1 =5; //PWM제어

int IN3 =8;
int IN4 =9;
int EN2 =10;

void setup()
{
    pinMode(IN1, OUTPUT);
    pinMode(IN2, OUTPUT);
    pinMode(EN1, OUTPUT);

    pinMode(IN3, OUTPUT);
    pinMode(IN4, OUTPUT);
    pinMode(EN2, OUTPUT);
}

void loop()
{
    //전진
    digitalWrite(IN1,HIGH);
    digitalWrite(IN2, LOW);
    analogWrite(EN1, 200);
    digitalWrite(IN3,HIGH);
    digitalWrite(IN4, LOW);
    analogWrite(EN2, 200);
    delay(1000);

    //정지
    digitalWrite(IN1, LOW);
    digitalWrite(IN2, LOW);
    digitalWrite(IN3, LOW);
    digitalWrite(IN4, LOW);
    delay(2000);


    
}

