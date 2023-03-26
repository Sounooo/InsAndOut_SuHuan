/*
// SuHuan - Blind box Figurine vending machine
// mousePress the different color of ellipse to display the image of anime character figurines
   Key pressed return or enter to go to initial scence
*/


boolean box = false;
boolean prize = false;
boolean show = false;

//background image
PImage cafe;
// image of inside a coffee shop and menu
PImage shopinside;
PImage menu;
// image of coffees
PImage cupchino;
PImage latte;
PImage mocha;
PImage coffee;
//
PImage machine;
// box image and parameters
PImage blindbox;

// font
PFont font;
PFont text;
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
PImage Eren;
PImage Kimetsu;
// image of soda
PImage fanta;
PImage coke;
PImage pepsi;
PImage tea;
PImage sodacoffee;
// image of phone and computer;
PImage iphone;
PImage mac;
PImage samsung;
PImage ipad;
int image = 0;
PImage[] images = new PImage[13];

// inital scence
int scence = 0;





void setup(){
  size(720,480);
  imageMode(CENTER);
  font = createFont("Barenda.ttf",27);
  
  text = createFont("Andria.ttf",25);

  //scence 0
  cafe = loadImage("nightcafe.jpeg");
  cafe.resize(720,480);
  machine = loadImage("vending.png");
  //scence 1
  shopinside = loadImage("inside.jpeg");
  menu = loadImage("menu.jpeg");
  menu.resize(400,300);
  cupchino = loadImage("cupchino.png");
  cupchino.resize(100,50);
  latte = loadImage("latte.png");
  latte.resize(60,50);
  mocha = loadImage("mocha.png");
  mocha.resize(80,50);
  coffee = cupchino;
  //figures
  mario = loadImage ("figure0.png");
  mario.resize(50,50);
  naruto = loadImage ("figure2.png");
  naruto.resize(50,50);
  gundam = loadImage ("figure1.png");
  gundam.resize(50,50);
  Eren = loadImage("figure9.png");
  Kimetsu = loadImage("figure8.png");
  //soda
  fanta = loadImage("figure3.png");
  coke = loadImage("figure4.png");
  pepsi = loadImage("figure5.png");
  tea = loadImage("figure6.png");
  sodacoffee = loadImage("figure7.png");
  // electronic product
  iphone = loadImage("figure10.png");
  ipad = loadImage("figure11.png");
  mac = loadImage("figure12.png");
  samsung = loadImage("figure13.png");
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
  
  if(scence == 0){
  scence();
  }
  else if (scence == 1){
  scence();
  }
  else if (scence == 2){
  scence();
  }
  else if (scence == 3){
  scence();
  }
  else {
  scence = 0;
  scence();
  }
}

void scence(){
if(scence == 0){
tint(200); // make image draker
image(cafe,360,240);
noTint();
image(machine,480,310);
textFont(text);
fill(255,204,153);
text("you pass a coffee shop",width/2-120,135);
text("you feel thirsty so you", width/2-120,height/2);
}

else if (scence == 1){
image(shopinside,300,220);
fill(51,0,0);
rect(500,153,60,40,5);
fill(255);
text("menu",470,150);
text("~~~~",470,170);
if(mouseX > 500 - 25 && mouseX < 500 +25 && mouseY > 153 -25 && mouseY < 153 + 25){
image(menu,400,230);
fill(255,178,102);
text("Press C for a Cappuccino, L for a Latte, M for a Mocha", width/2-340, 70);
text("Humm, none of these I would like to order. Let check outside",width/2-340,410);
fill(51,153,255);
text("Press Return to leave the shop",width/2-170,450);
}
if(show){
image(coffee, 500, 335);
image(coffee, 500,335);
image(coffee,500,335);
}
}
  
else if (scence == 2){
 imageMode(CENTER);
 //background image
image(cafe,360,240);
  
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

  if(box){
  display();
  }

for(int x = 300; x<=430; x+=40){
  for(int y = 120; y<= 310; y+=40){
fill(204,204,255);
square(x,y,30);
}
}

  }
  else if (scence == 3){
   opeanbox();
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
  else if (image == 2){
  text("Congrats, you got a naruto figurine", width/2,450);
  }
  
  else if (image == 3){
  text("It's a fanta soda", width/2,450);
  }
  else if (image == 4){
  text("It's a cocola soda", width/2,450);
  }
  
  else if (image == 5){
  text("It's a pepsi soda", width/2,450);
  }
  else if (image == 6){
  text("It's a green tea soda", width/2,450);
  }
  else if (image == 7){
  text("It's a coffee soda", width/2,450);
  }
  else if (image == 8){
  text("Congrats, you got a Kimetsu No Yaiba figurine", width/2,450);
  }
  else if (image == 9){
  text("Congrats, you got a Eren Yeager figurine", width/2,450);
  }
  else if (image == 10){
  text("WOW, It's a iphone 14", width/2,450);
  }
  else if (image == 11){
  text("WOW, It's a ipad air 4th", width/2,450);
  }
  else if (image == 12){
  text("WOW, It's a Mac air", width/2,450);
  }
  else{
  text("WOW, It's a Samsung Galaxy S23", width/2,450);
  }
 
 textSize(30);
 text("Press Return key for redraw", width/2, 70);
  
}

void display(){
  // a prize box appear in pick up window
    fill(204,204,255);
    rect(x4,y4,w1,h1);
    //image(blindbox,270,200);
}

void mousePressed(){
  // if the vending machine image is pressed
  if(mouseX > 480 && mouseX < 550 && mouseY > 250 && mouseY < 390){
  scence = 2;
  }
  // if the entry door is pressed
 else if(mouseX > 150 && mouseX < 250 && mouseY > 230 && mouseY < 370){
     scence = 1;
 }
  
  
  
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
   scence = 3;
   box = !box;
  }
}

void keyPressed(){
  if (key == ENTER){
    if(scence == 3){
    scence = 2;
  }
  else if (scence == 1){
  scence = 0;
  }
  }
  if(key == 'c' || key == 'C'){
    coffee = cupchino;
    show = !show;
  }
  
  else if (key == 'l' || key == 'L'){
    coffee = latte;
    show = !show;
}
  else if (key == 'm' || key == 'M'){
    coffee = mocha;
    show = !show;
}
}
