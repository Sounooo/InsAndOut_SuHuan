// SuHuan Li - RecordPlayer

void setup(){
//size(width,height);
size(1080,720);

background(200,210,220);
}



void draw(){
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

// The cover
fill(255,0,10);
noStroke();
ellipse(540,360,230,230);

// note
fill(0);
rect(539,280,30,150,20);

fill(0);
ellipse(530,420,77,60);

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

}
