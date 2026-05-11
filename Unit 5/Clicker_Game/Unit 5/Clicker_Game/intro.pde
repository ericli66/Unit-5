void intro() {
  background(250, 210, 0);

  rect(400, 400, 200, 100);
}

void introClicks() {
  if (mouseX  > 400 && mouseX < 600 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
}
