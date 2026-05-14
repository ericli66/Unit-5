void gameover() {
  background(0);
  theme.pause();
  gameover.play();
  fill(255);
  text("Gameover", 400, 300);
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
