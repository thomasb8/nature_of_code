


void setup() {
  size(800, 600);
  background(255);
}

float zoff = 0.0;

void draw() {
  loadPixels();
  float xoff = 0.0;
 
  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
    noiseDetail(8, 0.5);
 
    for (int y = 0; y < height; y++) {
      float bright = map(noise(xoff,yoff, zoff),0,1,0,255);
      pixels[x+y*width] = color(bright);
      yoff += 0.01;
    }
    xoff += 0.01;
  }
  zoff += 0.01;
  updatePixels();
}
