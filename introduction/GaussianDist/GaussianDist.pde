void setup() {
  size(640, 360);
  background(255);
}

void draw() {
    float num = (float) randomGaussian();
    float sd = 60;
    float mean = 320;
    float x = sd * num + mean;

    noStroke();
    fill(0, 10);
    ellipse(x, 180, 16, 16);
}