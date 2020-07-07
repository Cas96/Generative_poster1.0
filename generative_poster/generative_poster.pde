import processing.pdf.*;
boolean record = false;

PImage img;

float n;
float q;

Image[] cells;
int count;

void setup() {
  size(800, 800);
  frameRate(1000);
  background(0);
  img = loadImage("Test3.jpg");

  n = 10;
  q = width / n;

  cells = new Image[int(n*n)];
  for (int y = 0; y < n; y++) {
    float yoff = q * y + 0.5 * q;
    for (int x = 0; x < n; x++) {
      int index = int(x + y * n);
      float xoff = x * q + 0.5 * q;

      Image i = new Image(xoff, yoff);

      cells[index] = i;
println(i);

i.rotateRandom();
    //  if (count == 0) {
    //    i.rotateRandom();
    //  } else {
    //     i.compareRpos();
    //  }
    }
  }
}


void draw() {

  if (count < cells.length) {
    Image c = cells[count];

    c.display();
    count++;
    print("count = ");
    println(count);
  } 

  if (record && count >= n*n) {
    endRecord();
    record = false;
  }
}

void keyPressed() {
  if (key == 's') {
    background(0);
    count = 0;
    redraw();
    record = true;
    if (record) {
      beginRecord(PDF, "######.pdf");
    }

    println("[save]");
  }

  if (key == 'r') {

    count = 0;
    setup();
    record = false;
    println("[refresh]");
  }
}
