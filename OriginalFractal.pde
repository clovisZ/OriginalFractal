int[] colors = {
  color(255, 150, 150),
  color(150, 255, 150),
  color(150, 150, 255),
};
int chosenColor = colors[(int)(Math.random()*3)];
void setup() {
  size(750, 750);
  background(0);
}

public void draw() {
  if ((int)(Math.random()*5) == 4)
    chosenColor = colors[(int)(Math.random()*3)];
  stroke(chosenColor);
  background(0);
  fill(chosenColor);
  fractal(100, 100, 600);
}

public void fractal (float x, float y, float len) {
  if (len <= 100) {
    ellipse(x, y, len, len);
    line(x, y, y, x);
  } else {
    fractal(x, y, len * 0.3333);
    fractal(x + len * 0.3333, y, len * 0.3333);
    fractal(x + len*0.6666, y, len * 0.3333);
    
    fractal(x, y + len*0.3333, len * 0.3333);
    fractal(x + len*0.6666, y + len*0.3333, len * 0.3333);
    
    fractal(x, y + len*0.6666, len * 0.3333);
    fractal(x + len*0.3333, y + len*0.6666, len * 0.3333);
    fractal(x + len*0.6666, y + len*0.6666, len * 0.3333);
  }
}
