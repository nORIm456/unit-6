Spike[] spikes;
int n = 50;

void setup() {
  size(800, 800);
  background(255);
  
  spikes = new Spike[n];
  
  int i = 0;
  while (i < n) {
    spikes[i] = new Spike();
    i++;
  }
}

void draw() {
  //background(255);
  int i = 0;
  while (i < n) {
    spikes[i].show();
    spikes[i].shrink();
    i++;
  }
}
