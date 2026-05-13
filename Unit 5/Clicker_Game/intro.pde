void intro() {
  theme.play();
  background(250, 210, 0);
  textAlign(CENTER, CENTER);
  textFont(font);
  textSize(120);
  fill(0);
  text("Fruit Clicker", 400, 250);

  if (mouseX  > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    strokeWeight(10);
  } else {
    strokeWeight(1);
  }
  fill(255);
  rect(400, 400, 200, 100);
  fill(0);
  textSize(60);
  text("Start", 400, 400);
}

void introClicks() {
  if (mouseX  > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
  }
}
