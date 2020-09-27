class WalkerProbDist {
  float x;
  float y;
  
  WalkerProbDist() {
    x = width / 2;
    y = height / 2;
  }
  
  float getStepSizeExponential() {
      while(true) {
          float r1 = random(0, 10);
          float prob = r1 * r1;
          float r2 = random(0, 100);
          if (r2 < prob) {
              return r1;
          }
      }
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float stepsize = getStepSizeExponential();
 
    float stepx = random(-stepsize,stepsize);
    float stepy = random(-stepsize,stepsize);
    
    x += stepx;
    y += stepy;
  }
}

WalkerProbDist w;

void setup() {
  size(640, 360);
  w = new WalkerProbDist();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
