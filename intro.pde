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
  drawButton(250, 400, 250, 100, "Start");
  drawButton(550, 400, 250, 100, "Options");
}

void introClicks() {
  if (mouseX  > 125 && mouseX < 375 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
  if (mouseX  > 425 && mouseX < 675 && mouseY > 400 && mouseY < 500) {
    mode = OPTIONS;
  }
}

void drawButton(int x, int y, int w, int h, String label) {

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
  textSize(60);
  text(label, x, y);
}
