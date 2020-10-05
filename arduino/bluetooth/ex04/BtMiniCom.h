#pragma once
#include <Arduino.h>
#include <SoftwareSerial.h>
#include<MiniCom.h>

typedef void(*btminicom_callback_t)(String message);//문자열이 수신되었을때 호출할것

class BtMiniCom : public MiniCom{
protected:
    SoftwareSerial btSerial;
    btminicom_callback_t callback;

public:
    BtMiniCom(int rx, int tx, btminicom_callback_t callback);
    String readLine();  //\r\n을 제외한 문자열을 리턴
    void init();
    void send(const char *msg);
    void run();
};
