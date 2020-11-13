#include <SoftwareSerial.h>
#include <WiFiEsp.h>
#include <PubSubClient.h>
#include <SimpleTimer.h>
#include <WifiUtil.h>

SoftwareSerial softSerial(2, 3);           // RX, TX

const char ssid[] = "yonginDT";               // 네트워크 SSID
const char password[] = "12345678";       // 비밀번호
const char mqtt_server[] = "192.168.137.98"; // 서버 주소

// MQTT용 WiFi 클라이언트 객체 초기화
WifiUtil wifi(2, 3);
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


// 2초 간격으로 publish
SimpleTimer timer;

void setup() {
    Serial.begin(9600);
    wifi.init(ssid, password);
    mqtt_init();

}

void loop() {
    if (!client.connected()) {  // MQTT가 연결 X
        reconnect();
    }
    client.loop();
    timer.run();
}
