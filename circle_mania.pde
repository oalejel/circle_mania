float dividor = 3;
float radius = 50;
int constant = -1;

void setup() {
  size(300, 300);
  background(0);
  stroke(255);
  noFill();
}

void draw() {
  for (int i = 1; i <= dividor; i++) {
    for (int v = 1; v <= dividor; v++) {
      float x = ((width / dividor) * i) - radius;
      float y = ((height / dividor) * v) - radius;
      ellipse(x, y, (radius * 2) - 1, (radius * 2) - 1);
    }
  }
  radius += constant;
  if (radius == 0 || radius > 49) {
     constant *= -1;
     stroke(random(255), random(255), random(255));
  }
}
