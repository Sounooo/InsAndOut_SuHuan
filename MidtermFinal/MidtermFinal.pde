/*
// SuHuan - Click explore game
// mousePress the specific place to display the image or go to next scence
   key pressed return or enter to go to previously scence, also for some scence press specific key to interact the scence
   this project have audio file you need to download the Sound in the libraries in order to hear the sound.

   
   
   // fonts url
   Barenda Font:https://www.cufonfonts.com/font/barenda#google_vignette
   Andria Font: https://www.dafont.com/andria.font
   
   // Stable Diffusion images : : https://huggingface.co/spaces/stabilityai/stable-diffusion
   1. menu
   2. cupchino
   3. latte
   4. mocha
   
   // images url
   cafe:https://e0.pxfuel.com/wallpapers/471/945/desktop-wallpaper-lofi-coffee-shop-night-live-shop-anime.jpg
   shopinside:https://e0.pxfuel.com/wallpapers/371/986/desktop-wallpaper-arsenixc-old-bar-anime-scenery-anime-places-anime-coffee-shop.jpg
   seat:https://e0.pxfuel.com/wallpapers/428/419/desktop-wallpaper-anime-cafe-anime-coffee-shop.jpg
   vending machine:https://www.artstation.com/artwork/aRra8R, I have remove the background and only keep the machine but this is the full picture look like
   mouse cursor: https://www.kindpng.com/picc/m/92-923476_animated-gif-mouse-click-hd-png-download.png
   
   // figures
   mario:https://pixabay.com/photos/super-mario-red-jumping-man-1138462/
   naruto:https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTGEm7oRPhFXJq4rZ2Jv_JwOcQ6TontFJgsJpC3pmGA747ARVPu
   gundam:https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQNEoek4BFBgBMA0v3li_aMntNG6ps3sZdL3swkasWqj4yM-z0-
   Eren:https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTP0cn39v__oC0pjr8-1AqT8V-BWIzuq5vSehig_BCUhA6b75rg
   Kimetsu:https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQKntgvd-OIM_TqScruFxRSLto8X8gwFveLDIIkNt6VPy1sSYfo
   // drinks
   fanta:https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSWu5iVjRc57W9b8U7_6_XYbSzKW7Vd-Z6QdHc-cWylx2QV4v49
   coke:https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQx1LZKoMpdZt3WY0FT1PSyhPkgMgQstVTIgwupBn-PgUCOxOZi
   pepsi:https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTnYkWzf1pTD9E0KshfFAzm5ZIPs3aZ-kRSt8Dg3ikfHh3RW5VN
   green tea:https://web-japan.org/kidsweb/hitech/can/images/green2.jpg
   coffee soda: https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRZ8gT519uywwYZ4Y90oLISPgx1Ynbu1aF19MbOIKJ0DcZerWgW
   
   // Electronic product
   iphone 14:https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-7inch-deeppurple?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1663703841896
   ipad air 4: https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-ipad-air-wifi-green-2021?wid=1150&hei=1150&fmt=jpeg&qlt=95&.v=1644268592092
   mac air: https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-macbook-air-gold-m1-202010?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1634145607000
   samsung 23: https://image-us.samsung.com/SamsungUS/home/smartphones/galaxy-a-series/08242022/new/mo/A23-5G-LP_KV_MO.jpg?$cm-g-fb-full-bleed-img-mobile-jpg$
   
   // music
   moonshine is the title of the audio
   url:https://uppbeat.io/track/prigida/moonshine
*/

// for prize box show 
boolean box = false;
// for image of type of coffees 
boolean show = false;
// music
import processing.sound.*;
SoundFile moonshine;
//background image
PImage cafe;
// image of inside a coffee shop, menu and seat
PImage shopinside;
PImage menu;
PImage seat;
// image of coffees
PImage cupchino;
PImage latte;
PImage mocha;
PImage coffee;
// image of vending machine
PImage machine;
// image of mouse click
PImage mouse;
PImage mouse1;
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

// amount of money
float money = 0;
//round the number
int rmoney;
// item get
int name;
boolean item = false;
void setup(){
  size(720,480);
  
  moonshine = new SoundFile(this,"moonshine.mp3");
  moonshine.amp(0.3);
  moonshine.loop();
  imageMode(CENTER);
  font = createFont("Barenda.ttf",27);
  
  text = createFont("Andria.ttf",25);

  mouse = loadImage("mouseclick.png");
  mouse.resize(100,100);
  mouse1 = loadImage("mouseclick.png");
  mouse1.resize(100,100);


  //scence 0
  cafe = loadImage("nightcafe.jpeg");
  cafe.resize(720,480);
  machine = loadImage("vending.png");
  //scence 1
  shopinside = loadImage("inside.jpeg");
  menu = loadImage("menu.jpeg");
  menu.resize(400,300);
  seat = loadImage("seat.png");
  seat.resize(720,480);
  cupchino = loadImage("cupchino.png");
  cupchino.resize(150,100);
  latte = loadImage("latte.png");
  latte.resize(100,70);
  mocha = loadImage("mocha.png");
  mocha.resize(100,70);
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
  // loop the image in a array
  for(int i = 0; i < images.length; i++){
  images[i] = loadImage("figure" + i + ".png");
  }
  money = random(0,599);
  rmoney = round(money);
 
}



void draw(){
  if(scence == 0){
  scence();
  }
  else if (scence == 1){
  scence1();
  }
  else if (scence == 2){
  scence2();
  }
  else if (scence == 3){
  scence3();
  }
  else if (scence == 4){
  scence4();
  }
  else{
  scence();
  }
}



void scence(){
tint(200); // make image draker
image(cafe,360,240);
noTint();
image(machine,480,310);
textFont(text);
textAlign(CENTER);
fill(255,204,153);
text("Click shop entry",width/2,105);
text("Or the vending machine ", width/2,130);
text("Press the return key to go to previously scence", width/2,height/2+200);
fill(255,255,204);
text("Initial amount of money will be randomly",260,30);
fill(255);
text("Current $" + rmoney, 620,30);
// points to the machine
rotate(1.2);
image(mouse,440,-350);
// points to the door
rotate(-1.8);
image(mouse1,30,380);
}


void scence1(){
image(shopinside,300,220);
moonshine.amp(0.6);
fill(51,0,0);
rect(500,153,60,40,5);
textAlign(LEFT);
fill(255);
text("menu",470,150);
text("~~~~",470,170);
if(mouseX > 500 - 25 && mouseX < 500 +25 && mouseY > 153 -25 && mouseY < 153 + 25){
image(menu,400,230);
fill(255,178,102);
text("Press C for a Cappuccino, L for a Latte, M for a Mocha", width/2-340, 70);
text("None of these I would like to order. Let check outside",width/2-340,410);
fill(178,255,102);
text("Cappuccnio $20",10,200);
text("Latte $30",10,230);
text("Mocha $25",10,260);
fill(51,153,255);
text("Press Return to leave the shop",width/2-170,450);
fill(255,100,200);
//text("Press S key to find a seat", 250, 30);
}
else{
fill(255);
text("$" + rmoney, 30,30);
fill(204,255,255);
text("Move you mouse to the menu for order", width/2-200,250);
text("Press S key to find a seat to sit", width/2-200,290);
text("The coffee you order will be show on the seat scene",width/2-320,340);
}
}

void scence2(){
image(seat,360,240);
moonshine.amp(0.5);
fill(255);
text("$" + rmoney, 30,30);
if(rmoney <= 18){
fill(255,0,0);
textSize(30);
textAlign(CENTER);
text("You don't have enough money to order anything", width/2+10,height/2-150);
text("Press R key to reset money", width/2,30);
}
if(rmoney <= 19){
fill(255,0,0);
textSize(30);
textAlign(CENTER);
text("You don't have enough money to order a Cuppccino", width/2+10,height/2-100);
}
if(rmoney <= 24){
fill(255,0,0);
textSize(30);
textAlign(CENTER);
text("You don't have enough money to order a Mocha", width/2+10,height/2-50);
}
if(rmoney <= 29){
fill(255,0,0);
textSize(30);
textAlign(CENTER);
text("You don't have enough money to order a Latte", width/2+10,height/2);
}
if(show){
image(coffee,350,390);
if(coffee == cupchino){
  fill(153,255,204);
   textAlign(LEFT);
   text("Here is you Cappuccino, enjoy it", 200,320);
}
else if(coffee == latte){
  fill(153,255,204);
  textAlign(LEFT);
  text("Here is you Latte, enjoy it", 200,320);
}
else{
  fill(153,255,204);
  textAlign(LEFT);
  text("Here is you Mocha coffee, enjoy it", 200,320);
}
}
}


void scence3(){
  imageMode(CENTER);
 //background image
 tint(100);
 image(cafe,360,240);
 fill(255);
textFont(text);
text("$" + rmoney, 25,30);
fill(255,255,0);
textSize(23);
textFont(font);
textAlign(LEFT);
text("Item contains--", 10,100);
text("-Drinks", 10,130);
text("-Electronic item", 10,160);
text("-Anime Figures", 10,190);
// vending machine outer shell
noStroke();
fill(255,178,102);
rect(width/2,height/2,200,350);
//observe window
fill(255);
rect(360,200,180,200);
//pick up window
fill(255,255,204);
rect(320,360,100,90);
// Buttons 
// button pink
fill(255,204,204);
ellipse(x,y,w,h);
// button blue
fill(204,229,255);
ellipse(x1,y1,w,h);
// button red
fill(255,102,102);
ellipse(x2,y2,w,h);
//button green
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
// if box is true go to function display which show a prize box;
  if(box){
  display();
  }
// create prize box show on the observe window
for(int x = 300; x<=430; x+=40){
  for(int y = 120; y<= 310; y+=40){
fill(204,204,255);
square(x,y,30);
    }
  }
// If money is less than 50;
if(rmoney <= 49){
fill(255,0,0);
textSize(30);
textAlign(LEFT);
text("Not", 490,130);
text("enough", 530,190);
text("money!!!", 580,250);
textAlign(CENTER);
text("Press R key to reset", width/2, 30);
}
else{
fill(255,255,0);
textSize(22.5);
text("Press the color button", 590,130);
text("A box will be appear", 590,160);
text("Each button drop", 590,190);
text("Random items", 590,220);
text("Click the box", 590,250);
text("For check the prize ", 590,280);
textSize(25);
text("Instruction:", 590, 100);
text("Each try cost 50", 590,350);
}
}

void scence4(){
  noTint();
   opeanbox();
}


void opeanbox(){
  background(229,255,204);
  imageMode(CENTER);
  image(images[image],width/2,height/2);
  textSize(30);
  textAlign(CENTER);
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
 fill(76,0,153);
 text("Press Return key for redraw", width/2, 70);
  }
void display(){
  // a prize box appear in pick up window
    fill(204,204,255);
    rect(x4,y4,w1,h1);
}

void mousePressed(){
  // if the vending machine image is pressed
  if(mouseX > 480 && mouseX < 550 && mouseY > 250 && mouseY < 390){
      scence = 3;
  }
  // if the entry door is pressed
 else if(mouseX > 150 && mouseX < 250 && mouseY > 230 && mouseY < 370){
      scence = 1;
 }
  // if the pink button is pressed
  if(scence == 3){
  if(mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2){
    image = int(random(images.length));
    if(rmoney>=50){
    box = !box;
    rmoney -=50;
  }
  }
  else if(rmoney<=0){
  box=false;
  }
  }
  // if the blue button is pressed
  if(scence == 3){
  if(mouseX > x1-w/2 && mouseX < x1+w/2 && mouseY > y1-h/2 && mouseY < y1+h/2){
   image = int(random(images.length));
   if(rmoney>=50){
    box = !box;
    rmoney -=50;
  }
  }
    else if(rmoney<=0){
     box=false;
  }
  }
  //if the red button is pressed
  if(scence == 3){
   if(mouseX > x2-w/2 && mouseX < x2+w/2 && mouseY > y2-h/2 && mouseY < y2+h/2){
 image = int(random(images.length));
   if(rmoney>=50){
    box = !box;
    rmoney -=50;
  }
  }
      else if(rmoney<=0){
  box=false;
  }
}
  // if the green button is prssed
  if(scence == 3){
   if(mouseX > x3-w/2 && mouseX < x3+w/2 && mouseY > y3-h/2 && mouseY < y3+h/2){
  image = int(random(images.length));
   if(rmoney>=50){
    box = !box;
    rmoney -=50;
  }
  }
        else if(rmoney<=0){
  box=false;
  }
  }
  // if the prize is pressed then go to the opean box scence
  if(scence == 3){
   if (mouseX > x4-w1/2 && mouseX < x4+w1/2 && mouseY > y4-h1/2 && mouseY < y4+h1/2){
     box = false;
     scence = 4;
  }
  }
}

void keyPressed(){
  if (key == ENTER){
    if(scence == 1){
    scence = 0;
  }
  else if (scence == 2){
  scence = 1;
  show = false;
  }
  else if (scence == 3){
  scence = 0;
  }
  else if (scence == 4){
  scence = 3;
  }
  }
  if(key == 'c' || key == 'C'){
    if(rmoney>=20){
    rmoney -=20;
    coffee = cupchino;
    show = true;
  }
  
  else if(rmoney<=0){
  show = false;
  }
  }
  else if (key == 'l' || key == 'L'){
       if(rmoney>=30){
    rmoney -=30;
    coffee = latte;
    show = true;
  }
  else if(rmoney<=0){
  show = false;
  }
}
  else if (key == 'm' || key == 'M'){
    if(rmoney>=25){
    rmoney -=25;
    coffee = mocha;
    show = true;
}
else if(rmoney <=0){
show = false;
}
  }
  if(key == 's' || key == 'S'){
   if(scence == 1){
     scence = 2;
  }
}
  if(key == 'r' || key == 'R'){
  money = random(0,599);
  rmoney = round(money);
  }
}
