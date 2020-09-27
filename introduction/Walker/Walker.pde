class Walkers {
  float x;
  float y;
  
  Walkers() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float rand = random(0, 1); 
    float stepX = constrain(mouseX - x, -1.0, 1.0);
    float stepY = constrain(mouseY - y, -1.0, 1.0); 
    if (rand < 0.1) {
      stepX = random(-1, 1);
      stepY = random(-1, 1);
    } 
    x += stepX;
    y += stepY;
  }
}

Walkers w;

void setup() {
  size(640, 360);
  w = new Walkers();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
