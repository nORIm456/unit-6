import processing.javafx.*;

int numFish;
Fish[] myFish;
int numBubbles;
Bubbles[] myBubbles;
int numClouds;
Clouds[] myClouds;

color blue = #3174B4;
color sand = #E8DB75;
color darks = #BC9941;
void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  //colorMode(HSB);
  noStroke();

  numFish = 15;
  myFish = new Fish[numFish]; //constructor
  
  for (int i = 0; i < numFish; i++) {
    myFish[i] = new Fish();
  }
  
  numBubbles = 5;
  myBubbles = new Bubbles[numBubbles]; //constructor
  
  for (int u = 0; u < numBubbles; u++) {
    myBubbles[u] = new Bubbles();
  }
  numClouds = 15;
  myClouds = new Clouds[numClouds]; //constructor
  
  int i = 0;
  while (i < numClouds) {
    myClouds[i] = new Clouds();
    i++;
  }
  background(0);
}

void draw() {
  background(blue);
  //fill(darks);
  //rect(0, 700, 1600, 400);

  fill(0, 10);
  rect(width / 2, height / 2, width, height);
  
  for (int i = 0; i < numFish; i++) {
    myFish[i].show();
    myFish[i].act();
  }
  
  fill(0, 10);
  rect(width / 2, height / 2, width, height);

  for (int u = 0; u < numBubbles; u++) {
    myBubbles[u].show();
    myBubbles[u].act();
  }
    int e = 0;
  while (e < numClouds) {
      myClouds[e].show();
      myClouds[e].act();
    e++;
  }
  fill(sand);
  rect(0, 800, 1600, 400);
}
