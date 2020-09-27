int cols, rows;
int scl = 20;
int w = 2000;
int h = 1500;

float[][] terrain;

void setup() {
    size(1200, 900, P3D);
    cols = w / scl;
    rows = h / scl;
    terrain = new float[cols][rows];
}

float flyOffset = 0;

void draw() {
    flyOffset -= 0.02;
    float yoff = flyOffset;
    for (int y = 0; y < rows; y++) {
        float xoff = 0;
        for (int x = 0; x < cols; x++) {
            terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
            xoff += 0.1;
        }
        yoff += 0.1;
    }

    background(255);
    stroke(0);
    fill(120, 120, 120);

    translate(width/2, height/2);
    rotateX(PI/3);
    translate(-w/2, -h/2);

    for (int y = 0; y < rows - 1; y++) {
        beginShape(TRIANGLE_STRIP);
        for (int x = 0; x < cols; x++) {
            vertex(x*scl, y*scl, terrain[x][y]);
            vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
        }
        endShape();
    }
}