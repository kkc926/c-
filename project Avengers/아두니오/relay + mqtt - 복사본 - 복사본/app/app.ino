#define BLYNK_PRINT Serial
#define EspSerial Serial1

#include <SoftwareSerial.h>
#include <WiFiEsp.h>
#include <PubSubClient.h>
#include <SimpleTimer.h>
#include <WifiUtil.h>

#include<SPI.h>
#include <ESP8266_Lib.h>
#include <BlynkSimpleShieldEsp8266.h>

SoftwareSerial EspSerial(2, 3); // RX, TX of ESP8266          // RX, TX
char auth[] = "68O8QXywAHetPvqMhh0iH56GYVDbX2IQ";

const char ssid[] = "yonginDT";               // 네트워크 SSID
const char pass[] = "12345678";       // 비밀번호
const char mqtt_server[] = "192.168.137.98"; // 서버 주소

// MQTT용 WiFi 클라이언트 객체 초기화
WiFiEspClient espClient;
PubSubClient client(espClient);

void callback(char *topic, byte *payload, unsigned int length) {
    payload[length] = NULL;
    char *message = payload;

    if (strcmp("1", message) == 0) {
        Serial.print("ok");
        Serial.print(message);
    } else {
        Serial.print("no");
        Serial.print(message);
    }

    Serial.print(topic);
    Serial.print(" : ");
    Serial.println(message);
}

void mqtt_init() {
    client.setServer(mqtt_server, 1883);
    // subscriber인경우 메시지 수신시 호출할 콜백 함수 등록
    client.setCallback(callback);
}

// MQTT 서버에 접속될 때까지 재접속 시도
void reconnect() {

    while (!client.connected()) {
        Serial.print("Attempting MQTT connection...");
        
        if (client.connect("yongin")) {
            Serial.println("connected");
            // subscriber로 등록
            client.subscribe("iot/home/#",1);  // 구독 신청
        } else {
            Serial.print("failed, rc=");
            Serial.print(client.state());
            Serial.println(" try again in 5 seconds");
            delay(5000);
        }
    }
}


String s,x;    //to store incoming text ingredient

BLYNK_WRITE(V0)     // it will run every time a string is sent by Blynk app
{
  s=param.asStr();
  Serial.print(s); //string sent by Blynk app will be printed on Serial Monitor
   if(s=="on")
  {
    digitalWrite(7, LOW);       //Pin 7 has been set in setup()
//    digitalWrite(8, LOW);       //Pin 7 has been set in setup()
  }
  else if(s=="off")
  {
    digitalWrite(7, HIGH);
//    digitalWrite(8, HIGH);
    
  }
  else{
    Serial.print("Say on or off");
  }
}
BLYNK_WRITE(V1)     // it will run every time a string is sent by Blynk app
{
  x=param.asStr();
  Serial.print(x); //string sent by Blynk app will be printed on Serial Monitor
   if(x=="on")
  {
//    digitalWrite(7, LOW);       //Pin 7 has been set in setup()
    digitalWrite(8, LOW);       //Pin 7 has been set in setup()
  }
  else if(x=="off")
  {
//    digitalWrite(7, HIGH);
    digitalWrite(8, HIGH);
    
  }
  else{
    Serial.print("Say on or off");
  }
}


// 2초 간격으로 publish
SimpleTimer timer;
#define ESP8266_BAUD 9600

ESP8266 wifi(&EspSerial);


void setup() {
    Serial.begin(9600);
    EspSerial.begin(ESP8266_BAUD);
    mqtt_init();

  pinMode(7,OUTPUT);       //Pin 7 is set to output
  pinMode(8,OUTPUT);       //Pin 8 is set to output
  delay(10);
 
  Blynk.begin(auth, wifi, ssid, pass);
}

void loop() {
    Blynk.run();
    if (!client.connected()) {  // MQTT가 연결 X
        reconnect();
    }
    client.loop();
    timer.run();

}
