#include <SoftwareSerial.h>
  
SoftwareSerial BTSerial(2,3); // SoftwareSerial(RX, TX)

String myString=""; 	//받는 문자열
 
void setup() {
  Serial.begin(9600);   //시리얼모니터 
  BTSerial.begin(9600); //블루투스 시리얼 개방

}
void loop() {
	while(BTSerial.available()) {  //BTSerial에 전송된 값이 있으면

		//BTSerial int 값을 char 형식으로 변환
		char myChar = (char)BTSerial.read(); 

		//수신되는 문자를 myString에 모두 붙임 (1바이트씩 전송되는 것을 연결)
		myString+=myChar;   
		delay(5);		//수신 문자열 끊김 방지
	}

	if(!myString.equals("")) { //myString 값이 있다면
		Serial.println("input value: "+myString); 
		BTSerial.println("input value: "+myString); 
		myString="";  	//myString 변수값 초기화
	}
}
