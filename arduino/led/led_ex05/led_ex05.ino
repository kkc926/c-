int pin_LED1=4;
int pin_LED2=7;

void setup() {
  // put your setup code here, to run once:
    pinMode(pin_LED1, OUTPUT);
    pinMode(pin_LED2, OUTPUT);
    digitalWrite(pin_LED1, LOW);
    digitalWrite(pin_LED2, LOW);

}

void loop() {
  // put your main code here, to run repeatedly:
      digitalWrite(pin_LED1, HIGH);
      delay(500);
      digitalWrite(pin_LED1, LOW);
      digitalWrite(pin_LED2, HIGH);
      delay(500);
      digitalWrite(pin_LED1, HIGH);
      delay(500);
      digitalWrite(pin_LED1, LOW);
      digitalWrite(pin_LED2, LOW);
      delay(500);

}
