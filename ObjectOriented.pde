import processing.javafx.*;

int numParticles;
Particles[] myParticles;
int numStars;
Star[] myStars;

color blue = #3174B4;
color sand = #E8DB75;
color darks = #BC9941;
void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  //colorMode(HSB);
  noStroke();

  numParticles = 15;
  myParticles = new Particles[numParticles]; //constructor
  
  for (int i = 0; i < numParticles; i++) {
    myParticles[i] = new Particles();
  }
  
  numStars = 5;
  myStars = new Star[numStars]; //constructor
  
  for (int u = 0; u < numStars; u++) {
    myStars[u] = new Star();
  }
  background(0);
}

void draw() {
  background(blue);
  //fill(darks);
  //rect(0, 700, 1600, 400);

  fill(0, 10);
  rect(width / 2, height / 2, width, height);
  
  for (int i = 0; i < numParticles; i++) {
    myParticles[i].show();
    myParticles[i].act();
  }
  
  fill(0, 10);
  rect(width / 2, height / 2, width, height);

  for (int u = 0; u < numStars; u++) {
    myStars[u].show();
    myStars[u].act();
  }
  fill(sand);
  rect(0, 800, 1600, 400);
}
