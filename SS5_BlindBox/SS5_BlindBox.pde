
/*
// SuHuan - Blind box Figurine vending machine
// mousePress the different color of ellipse to display the image of anime character figurines
   Key pressed return or enter to go to initial scence
*/


boolean box = false;

//background image
PImage bk;
// box image and parameters
PImage blindbox;

// font
PFont font;
// button x,y,width,height
int x = 415;
int y = 330;
int w = 30;
int h = 30;
// button blue
int x1 = 390;
int y1 = 360;
//button red
int x2 = 440;
int y2 = 360;
// button green
int x3 = 415;
int y3 = 390;

// prize box
int x4 = 320;
int y4 = 385;
int w1 = 50;
int h1 = 40;



float opacity =0;
float fade = 1;

// image of figurine
PImage mario;
PImage naruto;
PImage gundam;

int image = 0;
PImage[] images = new PImage[3];

// inital scence
int scence = 0;

void setup(){
  size(720,480);
  font = createFont("Barenda.ttf",27);
  
  bk = loadImage("background.jpeg");
  bk.resize(720,480);
  //figures
  mario = loadImage ("figure0.png");
  mario.resize(50,50);
  naruto = loadImage ("figure2.png");
  naruto.resize(50,50);
  gundam = loadImage ("figure1.png");
  gundam.resize(50,50);
  rectMode(CENTER);
  //box
  blindbox = loadImage("blindbox.png");
  blindbox.resize(150,150);
  
  // loop the image in a array
  for(int i = 0; i < images.length; i++){
  images[i] = loadImage("figure" + i + ".png");
  }
  
}



void draw(){
  
if (scence == 0){
 imageMode(CENTER);
 //background image
image(bk,360,240);
  
// vending machine
//strokeWeight(5);
noStroke();
// outer shell
fill(255,178,102);
rect(width/2,height/2,200,350);
//observe window
fill(255);
rect(360,200,180,200);
//pick up window
fill(255,255,204);
rect(320,360,100,90);



// Buttons
fill(255,204,204);
ellipse(x,y,w,h);

fill(204,229,255);
ellipse(x1,y1,w,h);

fill(255,102,102);
ellipse(x2,y2,w,h);

fill(229,255,204);
ellipse(x3,y3,w,h);
// text of machine
fill(opacity);
textAlign(CENTER);
textSize(25);
textFont(font);
text("Lucky Box", 360, 92);
// Professor Berkoy text_animation demon code
opacity = opacity + fade;
if (opacity > 255 || opacity < 0){
 fade = -fade;
}

for(int x = 300; x<=430; x+=40){
  for(int y = 120; y<= 310; y+=40){
fill(204,204,255);
square(x,y,30);
}
}

  }
  else if (scence == 1){
    opeanbox();
   
  }
  if(box){
  display();
  }
  
}


void opeanbox(){
  //image(bk,0,0);
  background(229,255,204);
  //image(blindbox,270,200);
  //rect(x4 + 20,y4 - 150,w1+150,h1+150);
  imageMode(CENTER);
  image(images[image],width/2,height/2);
  textSize(30);
  if (image == 0){
  text("Congrats, you got a mario figurine", width/2,450);
  }
  
  else if (image == 1){
  text("Congrats, you got a gundam figurine", width/2,450);
  }
  
  else{
  text("Congrats, you got a naruto figurine", width/2,450);
  }
 
 textSize(30);
 text("Press Return key for redraw", width/2, 100);
  
}

void display(){
  // a prize box appear in pick up window
    fill(204,204,255);
    rect(x4,y4,w1,h1);
    //image(blindbox,270,200);
}

void mousePressed(){
  // if the pink button is pressed
  if(mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2){
    //image(mario,200,300);
    image = int(random(images.length));
    box = !box;
  }
  // if the blue button is pressed
  else if(mouseX > x1-w/2 && mouseX < x1+w/2 && mouseY > y1-h/2 && mouseY < y1+h/2){
 image = int(random(images.length));
 box = !box;
  
  }
  //if the red button is pressed
  else if(mouseX > x2-w/2 && mouseX < x2+w/2 && mouseY > y2-h/2 && mouseY < y2+h/2){
 image = int(random(images.length));
 box = !box;
  }
  // if the green button is prssed
  else if(mouseX > x3-w/2 && mouseX < x3+w/2 && mouseY > y3-h/2 && mouseY < y3+h/2){
  image = int(random(images.length));
  box = !box;
  }
  // if the prize is pressed then go to the opean box scence
  else if (mouseX > x4-w1/2 && mouseX < x4+w1/2 && mouseY > y4-h1/2 && mouseY < y4+h1/2){
   scence = 1;
   box = !box;
  }
}

void keyPressed(){
  if (key == ENTER){
    if(scence == 1){
    scence = 0;
  }
  }
}
