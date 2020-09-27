void setup() {
  size(640, 360);
  background(255);
  

  for (int i = 0; i < colors.length; i++) {
    colors[i] = getRandomGaussianColor();
  }

}
Color[] colors = new Color[10];

class Color {
  int r;
  int g;
  int b;
  int alpha;

  Color(int r, int g, int b, int alpha) {
    this.r = r;
    this.g = g;
    this.b = b;
    this.alpha = alpha;
  }
}

float generateRandomGaussian(float sd, float mean) {
  float num = (float) randomGaussian();
  return sd * num + mean;
}

Color getRandomGaussianColor() {
  return new Color(int(generateRandomGaussian(50, 127)), int(generateRandomGaussian(50, 127)), int(generateRandomGaussian(50, 127)), 100);
}

void draw() {
    float x = generateRandomGaussian(60, 320);
    float y = generateRandomGaussian(20, 180);
    int colorNum = int(constrain(generateRandomGaussian(2, 5), 0, 9));

    noStroke();
    Color sColor = colors[colorNum];
    fill(sColor.r, sColor.g, sColor.b, sColor.alpha);
    ellipse(x, y, 16, 16);
}