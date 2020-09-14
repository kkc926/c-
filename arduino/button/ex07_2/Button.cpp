#include "Button.h"

Button::Button(int pin) : pin(pin){
    pinMode(pin, INPUT_PULLUP); //하드웨어는 풀업
    state_previous = true;
}

int Button::read(){
    return !digitalRead(pin); //소프트웨어는 풀다운으로 운영해야 확장성에 좋음 따라서 !를 붙임
}