void intro() {
  background(250, 210, 0);
  textAlign(CENTER, CENTER);
  textFont(font);
  textSize(120);
  fill(0);
  text("Fruit Clicker", 400, 250);

  if (mouseX  > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    strokeWeight(10);
  } else {
    strokeWeight(1);
  }
  fill(255);
  rect(300, 400, 200, 100);
  fill(0);
  textSize(80);
  text("Start", 400, 450);
}

void introClicks() {
  if (mouseX  > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
}
