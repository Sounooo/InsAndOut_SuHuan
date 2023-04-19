// Original sketch from SS2_RecordPlayer_By_SuHuan
// Group Member: Su Huan Li, Eddie


/*
Reads values from serial port, written to the port by Arduino.
 The size of an ellipse changes according to the serial values.
 Must assign the correct port, see instructions below!
 */

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

float radians = 0;


float r = 0;


void setup() {
  size(1080, 720);
  //rectMode (CENTER);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[4]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() >  0 ) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  background(200,210,220);
  
  if(val > 1){
  fill(220);
  noStroke();
  ellipse(540,360,500,500);
  }
  
  if(val > 10 ){
  fill(102,255,102);
  stroke(255);
  ellipse(540,360,450,450);
  }
  
  if(val > 15 ){
   fill(0);
  stroke(255);
  ellipse(540,360,400,400);
  }
  
 if(val > 20 ){
  fill(0);
  stroke(255);
  ellipse(540,360,350,350);
  }
  
  if(val > 25 ){
    fill(0);
    stroke(255);
    ellipse(540,360,300,300);
  }
  
    if(val > 30 ){
    fill(0);
    stroke(255);
    ellipse(540,360,250,250);
  }
  
    if(val > 35 ){
    fill(209,210,220);
    stroke(255);
    ellipse(540,360,250,250);
  }
  
      if(val > 40 ){
      fill(255,0,10);
      noStroke();
      ellipse(540,360,230,230);
  }

         if(val > 50 ){
          fill(255);
          circle(870,300,30);
  }
  
           if(val > 55 ){
             fill(200);
          circle(870,300,10);
  }
             if(val > 60 ){
            fill(255);
          rect(864,306,13,160,10);
  }
  
               if(val > 65 ){
              fill(255);
            rect(700,454,175,13,10);
  }
  
                 if(val > 70 ){
           fill(255);
            square(685,448,25);
  }
  
                   if(val > 75 ){
 fill(200);
rect(688,454,17,4,10);
  }
  
                     if(val > 80 ){
fill(200);
rect(688,464,17,4,10);
  }
  
  
if(val > 81 && val < 256){
  translate(540,360);
r += (radians);
rotate(radians(r));
fill(0);
rect(0,0,30,110,20);

fill(0);
ellipse(0,0,77,60);
   radians = 0.2;
  }
if (val >= 255){
radians = 0 ;
}
  println (val); //prints to Processing console
  
}
