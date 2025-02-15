from btsocket import BtSocket
from bluetooth import * 

from gpiozero import Robot, DistanceSensor
from time import sleep

car = Robot(left=(17, 27, 22), right=(15, 18, 14), pwm=True)
sensor = DistanceSensor(echo=23, trigger=24)


def car_control(x,y):
    sx = abs(x) / 255 #속도 절대값을 0~1범위로 환산
    sy = abs(y) / 255

    if sy < 0.3 and sx < 0.3: # 정지
        car.stop()
    elif sy >= 0.3 and sx < 0.3: #전진 / 후진
        if y>0: #부호에 따라 방향 결정
            if sensor.distance *100<=20: # 20cm에서 자동차 stop
                car.stop()
            else:
                car.forward(sy)
            
        else : 
            car.backward(sy)
    elif sy < 0.3 and sx >= 0.3: #회전
        if x > 0:       #부호에 따라 방향 결정
            car.right(sx)
        else:
            car.left(sx)
    else: #나머지 영역은 어떻게?
        car.stop()


def control(tokens):
    command = int(tokens[0])
    if command == 0: #주행모드
        x = int(tokens[1])
        y = int(tokens[2])
        #자동차제어
        car_control(x,y)
    elif command == 1: #카메라 모드
        angle = int(tokens[1])
        #servo.angle = angle

client_socket=BtSocket( RFCOMM ) 
client_socket.connect(("00:18:91:D7:13:7E", 1)) 

try:
    while True:
        line = client_socket.readline()
        print(line)
        control(line.split(','))
except KeyboardInterrupt:
    print("Finished")

client_socket.close() 