#include "BtMiniCom.h"


BtMiniCom::BtMiniCom(int rx, int tx, btminicom_callback_t callback)
    :MiniCom(), btSerial(rx,tx),callback(callback){

    }

void BtMiniCom :: init(){
    MiniCom::init();
    btSerial.begin(9600);

}
String BtMiniCom::readLine(){
    String message="";
    while(btSerial.available()) {  //BTSerial에 전송된 값이 있으면
		//BTSerial int 값을 char 형식으로 변환
		char data = (char)btSerial.read(); 
            if(data == '\r') continue;
            if(data == '\n') break;

		//수신되는 문자를 myString에 모두 붙임 (1바이트씩 전송되는 것을 연결)
		message += data;   
		delay(5);		//수신 문자열 끊김 방지
	}
    return message;
}

void BtMiniCom :: send(const char *msg){
    btSerial.print(msg);
}

void BtMiniCom::run(){
    String msg = readLine();
    if(msg !="" && callback !=NULL){
        callback(msg);
    }
    MiniCom::run();
}