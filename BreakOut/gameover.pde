void gameover() {
  textSize(60);

  if (score == 28) {
    fill(teal);
    text("YOU WON!", width/2, height/2-50);
  } else {
    fill(orange);
    text("YOU LOST!", width/2, height/2-50);
  }

  // Instructions to restart
  fill(255);
  textSize(20);
  text("Click anywhere to restart", width/2, height/2 + 100);

  ballX = width / 2;
  ballY = 2*height / 3;
  vx = 0;
  vy = 5;
  score = 0;
  lives = 3;
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
