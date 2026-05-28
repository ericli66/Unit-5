void gameover() {
  //background image
  image(Intro, width/2, height/2);

  //pausing the music
  theme.pause();
  gameover.play();

  //text
  fill(255);
  text("Gameover", 400, 300);
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
