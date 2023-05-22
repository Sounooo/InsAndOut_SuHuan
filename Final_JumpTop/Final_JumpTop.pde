/*
//Su Huan - Final Project
//  By pressed three pressure sensor to control the character action in the game. This project have two audio file so it need the Sound libraries download.

// font url
Stay Pixel Font : https://www.fontspace.com/stay-pixel-font-f66634


// Images
bk0: https://w0.peakpx.com/wallpaper/190/456/HD-wallpaper-2d-pixel-art-background-10-sky-cloud-2d-environments-unity-asset-store.jpg
bk:https://cdnb.artstation.com/p/assets/images/images/038/935/389/large/raoni-dorim-mountains-night-highress.jpg?1624474759
platform:https://www.iconspng.com/images/ilmenskie-flying-platform-2/ilmenskie-flying-platform-2.jpg
gate: https://w7.pngwing.com/pngs/72/694/png-transparent-round-blue-plasma-illustration-portal-2-sprite-portal-spiral-sphere-desktop-wallpaper-thumbnail.png
gate2:https://www.pinterest.com/pin/find-hd-ftestickers-space-galaxy-circle-portal-blackhole-galaxy-portal-png-transparent-png-to-search-and-download-more-free--870039221732649491/
player:https://w7.pngwing.com/pngs/75/10/png-transparent-disney-s-stitch-experiment-626-lilo-pelekai-pixel-art-cartoon-character-pixel-art-thumbnail.png

//music
8-bit dream land: https://pixabay.com/music/video-games-8-bit-dream-land-142093/
sinneslöschen - beam:https://pixabay.com/music/video-games-sinnesloschen-beam-117362/



*/
float py = 600;
float px = 350;
float pw = 50;
float ph = 50;

float vy = 0;
float gy = 0.1;

float groundx = 350;
float groundy = 680;
float groundw = 700;
float groundh = 50;

// platform 1
float platformx = 620;
float platformy = 510;
float platformw = 100;
float platformh = 50;
float platformSpeed = 1;
// platform 2
float platformx2 = 450;
float platformy2 = 450;
float platformw2 = 100;
float platformh2 = 50;
// platform 3
float platformx3 = 330;
float platformy3 = 310;
float platformw3 = 100;
float platformh3 = 50;
// platform 4
float platformx4 = 100;
float platformy4 = 570;
float platformw4 = 100;
float platformh4 = 50;
// platform 5
float platformx5 = 200;
float platformy5 = 200;
float platformw5 = 100;
float platformh5 = 50;
// platform 6
float platformx6 = 100;
float platformy6 = 100;
float platformw6 = 100;
float platformh6 = 50;
// platform 7
float platformx7 = 550;
float platformy7 = 200;
float platformw7 = 100;
float platformh7 = 50;
// platform 8
float platformx8 = 190;
float platformy8 = 400;
float platformw8 = 100;
float platformh8 = 50;
// platform 9
float platformx9 = 620;
float platformy9 = 100;
float platformw9 = 100;
float platformh9 = 50;

int val=0; //to send over Serial
import processing.serial.*;  //import Serial library
Serial myPort;  // create object from Serial class

PImage bk0;
PImage bk;
PImage platform;
PImage player;
PImage gate;
PImage gate2;
PFont font;

import processing.sound.*;
SoundFile start;
SoundFile playing;

int sound = 0;
//
int scence = 0;

void setup(){
size(700,700);
bk0 = loadImage("bk0.jpeg");
bk0.resize(700,700);
bk = loadImage("bk.jpeg");
bk.resize(700,700);

platform = loadImage("platform.png");

player = loadImage("py.png");

gate = loadImage("gate.png");
gate.resize(50,50);
gate2 = loadImage("gate2.png");
gate2.resize(60,60);
font = createFont("StayPixel.ttf",50);

start = new SoundFile(this, "dreamland.mp3");
//start.loop();
playing = new SoundFile(this, "beam.mp3");


rectMode(CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[4]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}
void draw() {
  
  if(scence == 0){

    scence();
  }
  else if(scence == 1){
    scence1();

  }
  
  else if (scence == 2){
  scence2();

  }
}
void scence(){
  playing.stop();
  if(!start.isPlaying()){
  start.play();
  }
  
  image(bk0,0,0);
  textFont(font);
  textAlign(CENTER);
  fill(229,230,255);
  text("Press Return key to start", width/2,height/2);
  textSize(35);
  text("Press one of the pressure square sensor", width/2, height/2 + 50);
  text("for control the character movement", width/2, height/2 + 90);


}

    
void scence1(){

       start.stop();

   if(!playing.isPlaying()){
 playing.play();
 }
image(bk,0,0);
image(gate,70,30);
image(gate2,590,30);
  //background(0); 
    if ( myPort.available() >  0 ) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  // add gravity to velocity
  vy += gy;
  // add velocity to player
  py += vy;
  // if circle reaches the ground, set velocity(gravity) to 0 
  if (py + ph/2 >= groundy - groundh/2) {
    py =  groundy - groundh/2 - ph/2;
    vy = 0;
    
      if (keyPressed && keyCode == 32) {
      vy -= 4;
    }
  }
   // if the circle collide the platform then it can stand on it
    if (px + pw/2 > platformx - platformw/2 &&
          px - pw/2 < platformx + platformw/2 &&
          py + ph/2 > platformy - platformh/2 &&
          py - ph/2 < platformy + platformh/2) {
    py =  platformy - platformh/2 - ph/2 ;
    vy = 0;
    

  }// second platform
   else if (px + pw/2 > platformx2 - platformw2/2 &&
          px - pw/2 < platformx2 + platformw2/2 &&
          py + ph/2 > platformy2 - platformh2/2 &&
          py - ph/2 < platformy2 + platformh2/2) {
    py =  platformy2 - platformh2/2 - ph/2;
    vy = 0;
  }
  // third platform
   else if (px + pw/2 > platformx3 - platformw3/2 &&
          px - pw/2 < platformx3 + platformw3/2 &&
          py + ph/2 > platformy3 - platformh3/2 &&
          py - ph/2 < platformy3 + platformh3/2) {
    py =  platformy3 - platformh3/2 - ph/2;
    vy = 0;
  }
    // fourth platform
   else if (px + pw/2 > platformx4 - platformw4/2 &&
          px - pw/2 < platformx4 + platformw4/2 &&
          py + ph/2 > platformy4 - platformh4/2 &&
          py - ph/2 < platformy4 + platformh4/2) {
    py =  platformy4 - platformh4/2 - ph/2;
    vy = 0;
  }
    // fifth platform
   else if (px + pw/2 > platformx5 - platformw5/2 &&
          px - pw/2 < platformx5 + platformw5/2 &&
          py + ph/2 > platformy5 - platformh5/2 &&
          py - ph/2 < platformy5 + platformh5/2) {
    py =  platformy5 - platformh5/2 - ph/2;
    vy = 0;
  }
    // sixth platform
   else if (px + pw/2 > platformx6 - platformw6/2 &&
          px - pw/2 < platformx6 + platformw6/2 &&
          py + pw/2 > platformy6 - platformh6/2 &&
          py - pw/2 < platformy6 + platformh6/2) {
    py =  groundy - groundh/2 - ph/2;
    vy = 0;
  }
    // seventh platform
   else if (px + pw/2 > platformx7 - platformw7/2 &&
          px - pw/2 < platformx7 + platformw7/2 &&
          py + pw/2 > platformy7 - platformh7/2 &&
          py - pw/2 < platformy7 + platformh7/2) {
    py =  platformy7 - platformh7/2 - ph/2;
    vy = 0;
  }  // eight platform
   else if (px + pw/2 > platformx8 - platformw8/2 &&
          px - pw/2 < platformx8 + platformw8/2 &&
          py + ph/2 > platformy8 - platformh8/2 &&
          py - ph/2 < platformy8 + platformh8/2) {
    py =  platformy8 - platformh8/2 - ph/2;
    vy = 0;
  }  // nine platform
   else if (px + pw/2 > platformx9 - platformw9/2 &&
          px - pw/2 < platformx9 + platformw9/2 &&
          py + ph/2 > platformy9 - platformh9/2 &&
          py - ph/2 < platformy9 + platformh9/2) {
    py =  platformy9 - platformh9/2 - ph/2;
    vy = 0;
  }
  
  
  // if the circle hit the bottom of platform it fall
   if (px + pw/2 > platformx - platformw/2 && 
       px - pw/2 < platformx + platformw/2 && 
       py + ph/2 >  platformy + platformh/2 && vy < 0) {
    py = platformy + platformh/2 + ph/2;
    vy = 0;
  }
  // second platform
    else if (px + pw/2 > platformx2 - platformw2/2 && 
             px - pw/2 < platformx2 + platformw2/2 &&
             py + ph/2 > py + platformy2 + platformh2/2 && vy < 0) {
    py = platformy2 + platformh2/2 + ph/2;
    vy = 0;
  }
    // third platform
    else if (px + pw/2 > platformx3 - platformw3/2 && 
             px - pw/2 < platformx3 + platformw3/2 &&
             py + ph/2 > py + platformy3 + platformh3/2 && vy < 0) {
    py = platformy3 + platformh3/2 + ph/2;
    vy = 0;
  }
      // fourth platform
    else if (px + pw/2 > platformx4 - platformw4/2 && 
             px - pw/2 < platformx4 + platformw4/2 &&
             py + ph/2 > platformy4 - platformh4/2 && vy < 0) {
    py = platformy4 + platformh4/2 + ph/2;
    vy = 0;
  }    // fifth platform
    else if (px + pw/2 > platformx5 - platformw5/2 && 
             px - pw/2 < platformx5 + platformw5/2 &&
             py + ph/2 > py + platformy5 + platformh5/2 && vy < 0) {
    py = platformy5 + platformh5/2 + ph/2;
    vy = 0;
  }    // sixth platform
    else if (px + pw/2 > platformx6 - platformw6/2 && 
             px - pw/2 < platformx6 + platformw6/2 &&
             py + ph/2 > py + platformy6 + platformh6/2 && vy < 0) {
    py = platformy6 + platformh6/2 + ph/2;
    vy = 0;
  }    // seventh platform
    else if (px + pw/2 > platformx7 - platformw7/2 && 
             px - pw/2 < platformx7 + platformw7/2 &&
             py + ph/2 > py + platformy7 + platformh7/2 && vy < 0) {
    py = platformy7 + platformh7/2 + ph/2;
    vy = 0;
  }    // eight platform
    else if (px + pw/2 > platformx8 - platformw8/2 && 
             px - pw/2 < platformx8 + platformw8/2 &&
             py + ph/2 > py + platformy8 + platformh8/2 && vy < 0) {
    py = platformy8 + platformh8/2 + ph/2;
    vy = 0;
  }    // nine platform
    else if (px + pw/2 > platformx9 - platformw9/2 && 
             px - pw/2 < platformx9 + platformw9/2 &&
             py + ph/2 > py + platformy9 + platformh9/2 && vy < 0) {
    py = platformy9 + platformh9/2 + ph/2;
    vy = 0;
  }
  
  if(py ==  platformy9 - platformh9/2 - ph/2){
  scence = 2;
  }
  if (keyPressed && keyCode == LEFT) {
    px -= 5;
  }  
  if (keyPressed && keyCode == RIGHT) {
    px += 5;
  }

 if(val > 0 && val < 62){
px -= 5;
}
    else if(val > 63 && val < 126 && py + ph/2 == groundy - groundh/2){
    vy -= 4;
}
   else if (val > 63 && val < 126 && py + ph/2 == platformy - platformh/2) {
    vy -= 4;
}
   else if (val > 63 && val < 126 && py + ph/2 == platformy2 - platformh2/2) {
    vy -= 4;
  }
   else if (val > 63 && val < 126 && py + ph/2 == platformy3 - platformh3/2) {
    vy -= 4;
}  else if (val > 63 && val < 126 && py + ph/2 == platformy4 - platformh4/2) {
    vy -= 4;
}   else if (val > 63 && val < 126 && py + ph/2 == platformy5 - platformh5/2) {
    vy -= 4;
}   else if (val > 63 && val < 126 && py + ph/2 == platformy6 - platformh6/2) {
    vy -= 4;
}   else if (val > 63 && val < 126 && py + ph/2 == platformy7 - platformh7/2) {
    vy -= 4;
}   else if (val > 63 && val < 126 && py + ph/2 == platformy8 - platformh8/2) {
    vy -= 4;
}   else if (val > 63 && val < 126 && py + ph/2 == platformy9 - platformh9/2) {
    vy -= 4;
}
else if(val > 127 && val <= 255){
px += 5;
} 

println(val);
 
    // keep player inside screen bounds
  px = constrain(px, pw/2, width - pw/2);
  py = constrain(py, ph/2, height - ph/2);
    //Player
    fill(255);
   // ellipse(px, py, pw,ph);
    image(player,px - 20 ,py - 20,pw,ph);
    //Ground
    fill(0,51,100);
    rect(groundx, groundy, groundw, groundh);
    //plateform
   // fill(100,255,200);
    //rect(platformx,platformy,platformw,platformh);
    image(platform,platformx - platformw/2-10, platformy - platformh/2-10, platformw, platformh);
   // move platform left and right
  platformx += platformSpeed;
  // check if platform goes outside of screen bounds if did reverse platform direction
  if (platformx + platformw/2 > width) {
    platformx = width - platformw/2;
    platformSpeed = -platformSpeed; 
  }
  else if (platformx - platformw/2 < 0) {
    platformx = platformw/2;
    platformSpeed = -platformSpeed; 
  }
    image(platform,platformx2 - platformw2/2-10, platformy2 - platformh2/2-10, platformw2, platformh2);
platformx2 += 1;
if (platformx2 + platformw2/2 > width) {
    platformx2 = -platformw2/2;
} 
    image(platform,platformx3 - platformw3/2-10, platformy3 - platformh3/2-10, platformw3, platformh3);
    platformx3 +=1;
    if(platformx3 + platformw3/2 > width){
    platformx3 = width - platformw4/2;
    }
    image(platform,platformx4 - platformw4/2-10, platformy4 - platformh4/2-10, platformw4, platformh4);
    platformx4 -=1;
if (platformx4 + platformw4/2 < width) {
    platformx4 = platformw4/2;
} 


    image(platform,platformx5 - platformw5/2-10, platformy5 - platformh5/2-10, platformw5, platformh5);
    platformx5 += 1;
if (platformx5 + platformw5/2 > width) {
    platformx5 = -platformw5/2;
} 
    image(platform,platformx6 - platformw6/2-10, platformy6 - platformh6/2-10, platformw6, platformh6);
    image(platform,platformx7 - platformw7/2-10, platformy7 - platformh7/2-10, platformw7, platformh7);
            platformx7 -= 1;
if (platformx7 + platformw7/2 < 0) {
    platformx7 = platformw7/2 + width ;
} 
    image(platform,platformx8 - platformw8/2-10, platformy8 - platformh8/2-10, platformw8, platformh8);
        platformx8 -= 1;
if (platformx8 + platformw8/2 < 0) {
    platformx8 = platformw8/2 + width ;
} 
    image(platform,platformx9 - platformw9/2-10, platformy9 - platformh9/2-10, platformw9, platformh9);
}

void scence2(){
  //playing.stop();
  image(bk0,0,0);
  textFont(font);
  textAlign(CENTER);
  fill(229,230,255);
  textSize(35);
  text("You Win", width/2,height/2);
  text("Press R key to restart", width/2, height/2 + 50);


}

void keyPressed() {
  // if the circle y is on the sufrface of the ground then make the velocity to negative so it can jump.
    if (keyCode == 32 && py + ph/2 == groundy - groundh/2) {
    vy -= 4;
  }
   else if (keyCode == 32 && py + ph/2 == platformy - platformh/2) {
    vy -= 4;
}
   else if (keyCode == 32 && py + ph/2 == platformy2 - platformh2/2) {
    vy -= 4;
  }
   else if (keyCode == 32 && py + ph/2 == platformy3 - platformh3/2) {
    vy -= 4;
}  else if (keyCode == 32 && py + ph/2 == platformy4 - platformh4/2) {
    vy -= 4;
}   else if (keyCode == 32 && py + ph/2 == platformy5 - platformh5/2) {
    vy -= 4;
}   else if (keyCode == 32 && py + ph/2 == platformy6 - platformh6/2) {
    vy -= 4;
}   else if (keyCode == 32 && py + ph/2 == platformy7 - platformh7/2) {
    vy -= 4;
}   else if (keyCode == 32 && py + ph/2 == platformy8 - platformh8/2) {
    vy -= 4;
}   else if (keyCode == 32 && py + ph/2 == platformy9 - platformh9/2) {
    vy -= 4;
}

if(keyCode == ENTER){
  if(scence == 0){
  scence = 1;
  }
}
if(key == 'r' || key == 'R'){
  if(scence == 2){
   px = 350;
   py = 600;
  scence = 0;
  }
}
} 
