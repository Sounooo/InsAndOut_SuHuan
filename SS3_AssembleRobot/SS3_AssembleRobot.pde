// SuHuan Li - Assemble RobotHead


float y = 0;
float x = 0;
color ccolor = color (255,255,255);


void setup() {

  size (700, 700);
 rectMode (CENTER);
 
 
}



void draw() {

background(ccolor);

for(int x = 10; x<=width; x+=55){
  for(int y = 10; y<=height; y+=35){
fill(0,128,255);
rect(x,y,50,50);
ellipse(x,y,30,30);
}
}

fill(ccolor);
rect(width/2,height/2,100,100);




if (mouseX > width/2 -25 && mouseX < width/2 + 25 && mouseY >height/2 -25 && mouseY <height/2 + 25) {

for (int x=10; x<=width; x+=15){
        fill(255);
        ellipse (x, y, 30, 30); 
}
for(int y =10; y<=height; y+=15){
fill(255);
ellipse (x, y, 30, 30); 
  }
x+=3;
y+=3;
}

 if(x >= 320){
  //left eyes
ellipse(320,350,30,30);
fill(0);
ellipse(320,350,20,20);
fill(255);
ellipse(320,350,10,10);
} if(x >= 380){
//right eyes
ellipse(380,350,30,30);
fill(0);
ellipse(380,350,20,20);
fill(255);
ellipse(380,350,10,10);
}

if (y >= 300){
fill(204,229,255);
ellipse(300,300,30,30);
fill(204,204,255);
ellipse(400,300,30,30);
}

if (y >= 350){
//mouth
rect(350,380,70,20);
}
}

void mousePressed(){
ccolor = color(random(255),random(255),random(255));
}

  
