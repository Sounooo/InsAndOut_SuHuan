
const int leftfsr = A0;
const int jumpfsr = A2;
const int rightfsr = A5;

int leftval = 0;
int jumpval = 0;
int rightval = 0;


void setup() {  
  pinMode(leftfsr, INPUT);
  pinMode(jumpfsr, INPUT);
  pinMode(rightfsr, INPUT);
  Serial.begin(9600); 

  
}
 
void loop() {

  leftval = analogRead(leftfsr);
  leftval = map(leftval,0,1023,0,63);
  delay(100);

  Serial.write(leftval);
 // Serial.println(leftval);

  jumpval = analogRead(jumpfsr);
  jumpval = map(jumpval,0,1023,63,126);
  delay(100);

 Serial.write(jumpval);
  //Serial.println(jumpval);


  rightval = analogRead(rightfsr);
  rightval = map(rightval,0,1023,127,255);
  delay(100);

  Serial.write(rightval);
   //Serial.println(rightval);
  
}
