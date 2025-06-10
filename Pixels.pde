PImage img;

Pixel[] myPixels;
int numPixels = 500;

void setup() {
  size(800, 800);
  
  rectMode(CENTER);
  
  myPixels = new Pixel[numPixels];
  
  img = loadImage("bird.jpg");
  image(img, 0, 0, width, height);
  
  int i = 0;
  while (i < numPixels) {
    myPixels[i] = new Pixel();
    i++;
  }
}

void draw() {
   image(img, 0, 0, width, height);
  int i = 0;
  while (i < numPixels) {
    myPixels[i].act();
    myPixels[i].show();
    i++;
  }
}
