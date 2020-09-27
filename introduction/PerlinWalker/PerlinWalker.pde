class Walker {
  float x,y;
 
  float tx,ty;
 
  Walker() {
    x = width / 2;
    y = height / 2;
    tx = 0;
    ty = 10000;
  }
 
  void step() {
    float stepX;
    float stepY;
    stepX = map(noise(tx), 0, 1, -2, 2);
    stepY = map(noise(ty), 0, 1, -2, 2);
    x += stepX;
    y += stepY;
    tx += 0.01;
    ty += 0.01;
  }

    void display() {
    stroke(0);
    ellipse(x, y, 16, 16);
  }
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
    background(255, 255, 255);
    w.step();
    w.display();
}