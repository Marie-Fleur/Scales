void setup() {
 size(500, 700);
 noLoop();
}

void draw() {
  color color1 = #7B68EE; // lavender
  color color2 = #7FFF00; // green

  int waveLength = 120;
  int waveHeight = 20;
  int repeats = height / waveHeight;
  for (int v = -1; v < repeats + 1; v++) {
    int y = v * waveHeight;
    float percent = (float) v / repeats;
    float resultRed = red(color1) + percent * (red(color2) - red(color1));
    float resultGreen = green(color1) + percent * (green(color2) - green(color1));
    float resultBlue = blue(color1) + percent * (blue(color2) - blue(color1));
    color newColor = color(resultRed, resultGreen, resultBlue);
    fill(newColor);
    for (int h = 0; h < 6; h++) {
      int x = h * waveLength;
      scale(x, y, waveLength, waveHeight);
    }  
  }
}

void scale(int x, int y, int waveLength, int waveHeight) {
      beginShape();
      stroke(0,0,0);
      vertex(x, y);
      bezierVertex(x + waveLength/3, y - waveHeight, x + waveLength*2/3, y + waveHeight, x + waveLength, y);
      noStroke();
      vertex(x+waveLength,height);
      stroke(0, 0, 0);
      vertex(x,height);
      endShape();
 }
