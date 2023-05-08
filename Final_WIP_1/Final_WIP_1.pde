float py = 600;
float px = 350;
float ps = 50;

float velocity = 0;
float gravity = 0.1;

float groundx = 350;
float groundy = 650;
float groundw = 700;
float groundh = 100;


float platformx = 600;
float platformy = 500;
float platformw = 100;
float platformh = 20;
void setup(){
size(700,700);
}
void draw() {
  background(0); 
  // add gravity to velocity
  velocity += gravity;
  // add velocity to player
  py += velocity;
  // if circle reaches the ground, set velocity(gravity) to 0 
  if (py + ps/2 > groundy - groundh/2) {
    py =  groundy - groundh/2 - ps/2  ;
    velocity = 0;
  }
   // if the circle reach top of the platform then it can stand on it
 else if (py + ps/2 >= platformy - platformh/2 &&
          py - ps/2 <= platformy + platformh/2 &&
          px + ps/2 >= platformx - platformw/2 &&
          px - ps/2 <= platformx + platformw/2) {
    py =  platformy - platformh/2 - ps/2;
    velocity = 0;
  }
  if (keyPressed && keyCode == LEFT) {
    px -= 5;
  }
  if (keyPressed && keyCode == RIGHT) {
    px += 5;
  }
    //Player
    fill(255);
    ellipse(px, py, ps,ps);
    //Ground
    fill(255,200,210);
    rectMode(CENTER);
    rect(groundx, groundy, groundw, groundh);
    //plateform
    fill(100,255,200);
    rect(platformx,platformy,platformw,platformh);
}
void keyPressed() {
    if (keyCode == 32 && py + ps/2 == groundy - groundh/2 ) {
    velocity -= 5;
  }
}
