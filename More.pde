class Spike {
  
  //instance varibales or fields
  float x, y, w;
  
  //constructer: special function that defines how
  Spike() {
    x = random(width);
    y = random(height);
    w = random(100, 300);
  }
  
  //behaviour functions:
  void show() {
    stroke(random(0, 255));
    strokeWeight(2);
    fill(255);
    ellipse(x, y, w, w/2);
  }
  
  void shrink() {
    if(w > 0) {
      y = y - 4;
      w = w - 2;
    }
 }
}
