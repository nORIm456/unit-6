import processing.javafx.*;

int[] x;
int[] y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;

boolean akey, dkey;

Star[] myStars;
int numstars;

void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  colorMode(HSB);
  noStroke();
 
  numstars = 10;
  myStars = new Star[numstars]; //constructor
  
  int i = 0;
  while (i < numstars) {
    myStars[i] = new Star();
    i++;
  }
  background(0);
}

void draw() {
    fill(0, 10);
    rect(width/2, height/2, width, height);
   int i = 0;
  while (i < numstars) {
      myStars[i].show();
      myStars[i].act();
    i++;
  }
}
