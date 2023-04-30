

byte val;
const int LED1 = 11;
const int LED2 = 10;
const int BUZZER = 5; //buzzer to arduino pin 5
//int val = 0; //tracks incoming value from Serial port  
//int frequency=0; //tracks value to send to piezo

void setup() {
  pinMode(LED1, OUTPUT); 
  pinMode(LED2, OUTPUT); 
  pinMode(BUZZER, OUTPUT); 
  Serial.begin (9600); //start serial communication at 9600 baud
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }

 if (val == 1) { 
    analogWrite(LED1, 255);
    analogWrite(LED2, 50);    
  }
if (val == 2) { 
    analogWrite(LED1, 150);
    analogWrite(LED2, 150); 
  }
if (val == 3) { 
    analogWrite(LED1, 50); 
    analogWrite(LED2, 200);
  }
 if (val == 4) {
    analogWrite(LED1, 0);
    analogWrite(LED2, 255);
    tone(BUZZER,500,50);
    tone(BUZZER,700,50);
    tone(BUZZER,900,50);
    delay(2000);
    tone(BUZZER,0,0);
  }

}
