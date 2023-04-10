
const int buttonPin =2;
const int LED1=13;
const int LED2=12;
const int LED3=8;
const int LED4=7;
const int LED5=4;
const int LED6=3;


int buttonState =0;



void setup() {
  pinMode(LED1,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
  pinMode(LED4,OUTPUT);
  pinMode(LED5,OUTPUT);
  pinMode(LED6,OUTPUT);
  pinMode(buttonPin, INPUT);


}

void loop() {
  buttonState = digitalRead(buttonPin);
  delay(10);
  if(buttonState == HIGH){
  digitalWrite(LED1,HIGH);
  delay(1000);
  digitalWrite(LED2,HIGH);
  delay(2000);
  digitalWrite(LED2,LOW);
  delay(0);
  digitalWrite(LED3,HIGH);
  delay(2500);
  digitalWrite(LED3,LOW);
  delay(0);
  digitalWrite(LED4,HIGH);
  delay(3000);
  digitalWrite(LED4,LOW);
  delay(0);
  digitalWrite(LED5,HIGH);
  delay(3500);
  digitalWrite(LED5,LOW);
  delay(0);
  analogWrite(LED6,255);
  delay(1000);
  analogWrite(LED6,170);
  delay(1000);
  analogWrite(LED6,60);
  delay(1000);
  analogWrite(LED6,10);
  delay(1000);
  analogWrite(LED6,0);
  delay(1000);
  digitalWrite(LED1,LOW);
  delay(500);
  // PART 2
  digitalWrite(LED1,HIGH);
  digitalWrite(LED2,HIGH);
  digitalWrite(LED3,HIGH);
  digitalWrite(LED4,HIGH);
  digitalWrite(LED5,HIGH);
  analogWrite(LED6,255);
  delay(1500);
  digitalWrite(LED1,LOW);
  digitalWrite(LED2,LOW);
  digitalWrite(LED3,LOW);
  digitalWrite(LED4,LOW);
  digitalWrite(LED5,LOW);
  analogWrite(LED6,0);
  delay(1000);
  // PART3
  digitalWrite(LED1,HIGH);
  digitalWrite(LED2,HIGH);
  digitalWrite(LED3,HIGH);
  digitalWrite(LED4,HIGH);
  digitalWrite(LED5,HIGH);
  analogWrite(LED6,255);
  delay(2000);
  digitalWrite(LED4,LOW);
  delay(1000);
  digitalWrite(LED3,LOW);
  delay(1000);
  digitalWrite(LED2,LOW);
  delay(1000);
  digitalWrite(LED5,LOW);
  delay(1000);
  digitalWrite(LED1,LOW);
  delay(1000);
  analogWrite(LED6,0);
  delay(1000);
  //PART 4
  analogWrite(LED6,0);
  delay(1000);
  analogWrite(LED6,100);
  delay(1000);
  analogWrite(LED6,160);
  delay(1000);
  analogWrite(LED6,200);
  delay(1000);
  analogWrite(LED6,255);
  delay(1000);
  digitalWrite(LED1,HIGH);
  digitalWrite(LED2,HIGH);
  digitalWrite(LED3,HIGH);
  digitalWrite(LED4,HIGH);
  digitalWrite(LED5,HIGH);
  delay(1000);
  digitalWrite(LED1,LOW);
  digitalWrite(LED2,LOW);
  digitalWrite(LED3,LOW);
  digitalWrite(LED4,LOW);
  digitalWrite(LED5,LOW);
  analogWrite(LED6,0);
  delay(1000);
  } else{
  digitalWrite(LED1,LOW);
  digitalWrite(LED2,LOW);
  digitalWrite(LED3,LOW);
  digitalWrite(LED4,LOW);
  digitalWrite(LED5,LOW);
  analogWrite(LED6,0);
  delay(1000);
  }
}
