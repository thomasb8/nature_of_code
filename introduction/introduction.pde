class Walker {
  int x;
  int y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  int shouldPrint = 0;

  void step() {
    float rand = random(0, 1);
    float stepX = constrain(mouseX - x, -1.0, 1.0);
    float stepY = constrain(mouseY - y, -1.0, 1.0);
    if (rand < 0.5) {
      stepX = random(-1, 1);
      stepY = random(-1, 1);
    }
    x += stepX;
    y += stepY;

     if (shouldPrint == 10) {
      print("Random: " + rand);
      print("X: " + stepX + " ");
      print("Y: " + stepY + "\n");
      shouldPrint = 0;
    } else {
      shouldPrint++;
    }
  }
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
