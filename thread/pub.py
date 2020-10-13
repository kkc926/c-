import paho.mqtt.client as mqtt
from time import sleep
from random import random

def on_connect(client, userdata, flags, rc):
    print("Connected with result code " + str(rc))
    if rc == 0:
        client.subscribe("iot/#")  # 연결 성공시 토픽 구독 신청
    else:
        print('연결 실패 : ', rc)


# 1. MQTT 클라이언트 객체 인스턴스화
# 1. MQTT 클라이언트 객체 인스턴스화
client = mqtt.Client()
# 2. 관련 이벤트에 대한 콜백 함수 등록
client.on_connect = on_connect

try :
    # 2. 브로커 연결
    client.connect("localhost")
    
    # 3. 토픽 메시지 발행

    while True:
        client.publish("iot/home2/temp", 25+random())
        client.loop(2)

except Exception as err:
    print('에러 : %s'%err)