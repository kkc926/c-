#pragma once

#include <Arduino.h>
#include <LiquidCrystal_I2C.h>
#include <SimpleTimer.h>

class MiniCom{
    protected:
        LiquidCrystal_I2C lcd;
        SimpleTimer timer;

    public:
        MiniCom(); //생성자
        void init(); //초기화 코드
        int setInterval (unsigned long d, timer_callback f); //타이머 콜백 등록
        void run(); //타이머 운영 및 기타 처리

        //lcd 출력지원함수 helper함수
        void print(int col, int row, const char *pMsg);//col, row에 msg를 출력해라
        void print(int row, const char *pMsg);//몇번째 줄에 출력할지 지정
        void print(int row, const char *pTitle, int value);
        void print(int row, const char *pTitle, double value, int width=6); 
};

// title : int value
// title : int double value
