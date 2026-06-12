void intro() {
  background(purple);

  //intro
  theme.play();

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  // Title
  fill(255);
  textSize(60);
  text("CIRCULAR PONG", width/2, height/4);

  // Draw the buttons (hover logic is inside)
  drawButton(width/4, height/2, 200, 60, "1 PLAYER", green);
  drawButton(3*width/4, height/2, 200, 60, "2 PLAYER", green);

  strokeWeight(1); // Reset
}

void introClicks() {
  // Check for 1 Player Button
  if (mouseX > width/4 - 100 && mouseX < width/4 + 100 &&
    mouseY > height/2 - 30 && mouseY < height/2 + 30) {
    AI = true;
    mode = GAME;
    resetGame();
  }

  // Check for 2 Player Button
  if (mouseX > 3*width/4 - 100 && mouseX < 3*width/4 + 100 &&
    mouseY > height/2 - 30 && mouseY < height/2 + 30) {
    AI = false;
    mode = GAME;
    resetGame();
  }
}

// Handles drawing the button and checking for hover thickness
void drawButton(float x, float y, float w, float h, String label, color buttonColor) {
  // Center-aligned bounding box math
  if (mouseX > x - w/2 && mouseX < x + w/2 &&
    mouseY > y - h/2 && mouseY < y + h/2) {
    strokeWeight(5); // Thick border on hover
  } else {
    strokeWeight(1); // Normal border
  }

  stroke(255);
  fill(buttonColor);
  rect(x, y, w, h);

  fill(255);
  textSize(25);
  text(label, x, y);

  //reset score
  leftScore = 0;
  rightScore = 0;
}
