// SuHuan Li - RecordPlayer


float x, x2,x3,x4,x5,x6,y,y2,y3,y4,y5,y6;

float radians = 0;


float r = 0;

color ccolor = color (255,255,255);

float rb = 255;
float gb = 255;
float bb = 255;




void setup(){
//size(width,height);

size(1080,720);

x = random(width);
x2 = random(width);
x3 = random(width);
x4 = random(width);
x5 = random(width);
x6 = random(width);
y = random(height);
y2 = random(height);
y3 = random(height);
y4 = random(height);
y5 = random(height);
y6 = random(height);
}



void draw(){
  
  background(ccolor);

// record Plinth
fill(220);
noStroke();
ellipse(540,360,500,500);

// Platter
fill(0);
stroke(255);
ellipse(540,360,450,450);

fill(0);
stroke(255);
ellipse(540,360,400,400);

fill(0);
stroke(255);
ellipse(540,360,350,350);

fill(0);
stroke(255);
ellipse(540,360,300,300);

fill(0);
stroke(255);
ellipse(540,360,250,250);

// slip mat
fill(209,210,220);
stroke(255);
ellipse(540,360,250,250);

 //The cover
fill(255,0,10);
noStroke();
ellipse(540,360,230,230);

//tonearm
fill(255);
circle(870,300,30);

fill(200);
circle(870,300,10);

fill(255);
rect(864,306,13,160,10);

fill(255);
rect(700,454,175,13,10);

fill(255);
square(685,448,25);

fill(200);
rect(688,454,17,4,10);

fill(200);
rect(688,464,17,4,10);

//bubble
//if(mouseX > 540){
fill(rb,gb,bb);
noStroke();
ellipse(x,y,50,50);
ellipse(x2,y2,50,50);
ellipse(x3,y3,50,50);
ellipse(x4,y4,50,50);
ellipse(x5,y5,50,50);
ellipse(x6,y6,50,50);

y = y - 0.3;

y2 = y2 - 0.3;

y3 = y3 - 0.7;

y4 = y4 -0.7;

y5 = y5 - 1.0;

y6 = y6 - 1.0;

//}




  // note
translate(540,360);
r += (radians);
rotate(radians(r));
fill(0);
rect(0,0,30,110,20);

fill(0);
ellipse(0,0,77,60);




}



void keyPressed(){
   if (keyCode == UP) {
    radians += 0.2;
    
  }   else if (keyCode == DOWN)  {
    radians -= 0.2;
   
}
   else{
    radians = 0;
    
    
  }
 
}

void mousePressed(){

 ccolor = color(random(255),random(255),random(255));
 
 rb = random(0,255);
 gb = random(0,255);
 bb = random(0,255);
 
 x = random(width);
x2 = random(width);
x3 = random(width);
x4 = random(width);
x5 = random(width);
x6 = random(width);
y = random(height);
y2 = random(height);
y3 = random(height);
y4 = random(height);
y5 = random(height);
y6 = random(height);


}
