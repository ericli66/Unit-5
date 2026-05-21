void intro() {
  theme.play();
  image(Intro, 0, 0);
  textAlign(CENTER, CENTER);
  textFont(font);
  textSize(120);
  fill(250, 180, 5);
  text("Fruit Clicker", 400, 150);

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

  if (mouseX  > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    strokeWeight(10);
  } else {
    strokeWeight(1);
  }
  fill(255);
  rect(400, 500, 200, 100);
  fill(0);
  textSize(60);
  text("Options", 400, 500);
}

void introClicks() {
  if (mouseX  > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
  }
  if (mouseX  > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    mode = OPTIONS;
  }
}
