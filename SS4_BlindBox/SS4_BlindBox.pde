/*
// SuHuan - Blind box Figurine vending machine

// mousePress the center of the three different color of ellipse to display the image of anime character figurines


*/

// button x,y,width,height
int x = 400;
int y = 350;
int w = 50;
int h = 50;
// button blue
int x1 = 480;
//button red
int x2 = 560;


// image of figurine
PImage mario;
PImage naruto;
PImage gundam;




void setup(){

size(720,480);
mario = loadImage ("figure0.png");
mario.resize(110,110);
naruto = loadImage ("figure2.png");
naruto.resize(250,250);
gundam = loadImage ("figure1.png");
gundam.resize(250,250);

rectMode(CENTER);

}


void draw(){
  
background(255);


strokeWeight(5);
//noStroke();
// outer shell
fill(255,178,102);
rect(width/2,height/2,500,350);
//observe window
fill(255);
rect(360,200,480,200);
//pick up window
fill(255,255,204);
rect(250,360,200,90);

// Buttons
fill(255,204,204);
ellipse(x,y,w,h);

fill(204,229,255);
ellipse(x1,y,w,h);

fill(255,102,102);
ellipse(x2,y,w,h);
// name of machine
fill(255,51,51);
textAlign(CENTER);
textSize(25);
text("Blind Box Vending Machine", 360, 90);
// prize
for(int x = 160; x<=590; x+= 50){
fill(0);
ellipse(x,150,30,30);
}
for(int x = 160; x<=590; x+=50){
fill(0,128,255);
square(x,205,30);
}
for(int x = 160; x<=590; x+=50){
fill(229,255,204);
ellipse(x,260,40,20);
}


if(mousePressed){
if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    image(mario,200,300);
    fill(255,204,204);
    textSize(25);
    text("Congrats, you got a Mario figurine", width/2,450);
    println("The pink button pressed ");
  
  }
     else if(mouseX > x1 && mouseX < x1+w && mouseY > y && mouseY < y+h){
  image(naruto,110,230);
  fill(204,229,255);
  textSize(25);
  text("Congrats, you got a Naruto figurine", width/2,450);
  println("The blue button pressed ");
  
  }
  else if(mouseX > x2 && mouseX < x2+w && mouseY > y && mouseY < y+h){
  image(gundam,110,230);
  fill(255,102,102);
  textSize(25);
  text("Congrats, you got a Gundam figurine", width/2,450);
  println("The blue button pressed ");
  
  }
}
}

/*void mousePressed(){
  
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
 

  
  }
  
   else if(mouseX > x1 && mouseX < x1+w && mouseY > y && mouseY < y+h){

  
  }
     else if(mouseX > x2 && mouseX < x2+w && mouseY > y && mouseY < y+h){

  
  }
}
*/
