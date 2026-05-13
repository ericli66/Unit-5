void gameover() {
  background(0);
  theme.pause();
  gameover.play();
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
