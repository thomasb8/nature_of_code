class GaussianWalker {
  int x;
  int y;
  
  GaussianWalker() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  float generateRandomGaussian(float sd, float mean) {
  float num = (float) randomGaussian();
  return sd * num + mean;
}

  void step() {
    x += generateRandomGaussian(1, 0.5);
    y += generateRandomGaussian(1, 0.5);
  }
}

GaussianWalker w;

void setup() {
  size(640, 360);
  w = new GaussianWalker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
