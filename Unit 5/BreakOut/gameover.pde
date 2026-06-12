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
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
  resetGame();
}

void resetGame() {
  //Reset the brick statuses back to true
  int i = 0;
  while (i < n) {
    alive[i] = true;
    i++;
  }

  //Reset game stats
  score = 0;
  lives = 3; 

  //Reset ball position and speed
  ballX = width / 2;
  ballY = 2 * height / 3;
  vx = 0;
  vy = 5;

  // Reset paddle position
  paddleX = width / 2;
}
