import processing.javafx.*;

int[] x;
int[] y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;

boolean akey, dkey;

Ripple[] myRipples;
int numripples;

void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  colorMode(HSB);
  noFill();
 
  numripples = 50;
  myRipples = new Ripple[numripples]; //constructor
  
  int i = 0;
  while (i < numripples) {
    myRipples[i] = new Ripple();
    i++;
  }
  
  stroke(255);
  strokeWeight(1);
}

void draw() {
    background(0);
    //fill(0, 10);
    //rect(width/2, height/2, width, height);
   int i = 0;
  while (i < numripples) {
      myRipples[i].show();
      myRipples[i].act();
    i++;
  }
}
