#include "BtMiniCom.h"


void received(String msg);


BtMiniCom com(2,3,received);

void received(String msg){
	//msg처리 후 
	//처리 결과를 응답하려고 합니다.
	if (msg == "on"){

	}else if(msg =="off"){
		
	}
	com.send("OK");
}

void setup(){
	com.init();
}

void loop(){
	com.run();
}