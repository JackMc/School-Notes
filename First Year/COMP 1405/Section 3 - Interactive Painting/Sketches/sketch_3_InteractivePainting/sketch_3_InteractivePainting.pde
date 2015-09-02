final color blankScreenColor = color(255);

final color redColor = color(240, 0, 0);
final color greenColor = color(0, 240, 0);
final color blueColor = color(0, 0, 240);

final float lineEpsilon = 1.0f;

color currentColor;

final int paintRadius = 5;

// ;);)
boolean screenDirty = false;

// Set the size :)
void setup() {
  frame.setTitle("The World's Best Paint Program");

  size(500, 500);
  background(blankScreenColor);
  currentColor = redColor;
}

void draw() {
  fill(0);
  noSmooth();
  String helpMessage = "Welcome! Please press r, g, " + 
    "or b to change color\n" + 
    " and space to clear the screen :)";
  text(helpMessage, 10, 10);
  smooth();
}

void keyPressed() {
  switch (key) {
  case 'r':
    currentColor = redColor;
    break;
  case 'g':
    currentColor = greenColor;
    break;
  case 'b':
    currentColor = blueColor;
    break;
  case ' ':
    if (screenDirty) {
      background(blankScreenColor);
      screenDirty = false;
    }
    break;
  }
}

void mouseDragged() {
  // Make sure that currentColor is our fill
    // We need to draw!
    fill(currentColor);
    noStroke();
    if ((mouseX - pmouseX) < lineEpsilon) {
      ellipse(mouseX, mouseY, paintRadius*2, paintRadius*2);
    }
    else {
      
    }

    screenDirty = true;
}
