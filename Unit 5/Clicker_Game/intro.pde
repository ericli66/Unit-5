void intro() {
  //intro
  theme.play();

  //background image
  image(Intro, width/2, height/2);

  //title
  textFont(font);
  textSize(120);
  fill(0);
  text("Fruit Clicker", 400, 150);

  // Buttons
  drawButton(250, 400, 250, 100, 60, "Start");
  drawButton(550, 400, 250, 100, 60,"Options");
}

void introClicks() {
  // Start Button (X: 125 to 375, Y: 350 to 450)
  if (mouseX > 125 && mouseX < 375 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
  }
  
  // Options Button (X: 425 to 675, Y: 350 to 450)
  if (mouseX > 425 && mouseX < 675 && mouseY > 350 && mouseY < 450) {
    mode = OPTIONS;
  }
}

void drawButton(int x, int y, int w, int h, int s, String label) {

  // Check if mouse is over button
  if (mouseX > x - w/2 && mouseX < x + w/2 &&
    mouseY > y - h/2 && mouseY < y + h/2) {
    strokeWeight(10);
  } else {
    strokeWeight(1);
  }

  fill(0,0,0,100);
  rect(x, y, w, h);

  fill(0);
  textSize(s);
  text(label, x, y);
}
