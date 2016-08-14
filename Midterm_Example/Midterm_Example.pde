float beginX = 20.0;  // Initial x-coordinate
float beginY = 10.0;  // Initial y-coordinate
float endX = 570.0;   // Final x-coordinate
float endY = 320.0;   // Final y-coordinate
float distX;          // X-axis distance to move
float distY;          // Y-axis distance to move
float exponent = 4;   // Determines the curve
float x = 0.0;        // Current x-coordinate
float y = 0.0;        // Current y-coordinate
float step = 0.01;    // Size of each step along the path
float pct = 0.0;      // Percentage traveled (0.0 to 1.0)

//float beginA = 20.0;  // Initial x-coordinate
//float beginB = 10.0;  // Initial y-coordinate
//float endA = 600.0;   // Final x-coordinate
//float endB = 200.0;   // Final y-coordinate
//float distA;          // X-axis distance to move
//float distB;          // Y-axis distance to move
//float a = 0.0;        // Current x-coordinate
//float b = 0.0;        // Current y-coordinate

void setup() {
  size(640, 360);
  noStroke();
  distX = endX - beginX;
  distY = endY - beginY;
  //distA = endA - beginA;
  //distB = endB - beginB;
}

void draw() {
  //fill(0, 2);
  //rect(0, 0, width, height);
  pct += step;
  if (pct < 1.0) {
    x = beginX + (pct * distX);
    y = beginY + (pow(pct, exponent) * distY);
    //a = beginA + (pct * distA);
    //b = beginB + (pow(pct, exponent) * distB);
  }
  fill(255);
  ellipse(x, y, 20, 20);
  //ellipse(a, b, 20, 20);
}

//void mousePressed() {
//  pct = 0.0;
//  beginX = x;
//  beginY = y;
//  endX = mouseX;
//  endY = mouseY;
//  distX = endX - beginX;
//  distY = endY - beginY;
//}