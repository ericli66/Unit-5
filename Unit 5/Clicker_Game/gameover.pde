void gameover() {
  //background image
  image(Intro, width/2, height/2);

  //pausing the music
  theme.pause();
  gameover.play();

  //text display
  fill(0);
  textSize(60);
  text("Game Over", width/2, height/2 - 50);
  
  textSize(30);
  text("Your Score: " + score, width/2, height/2 + 30);
  text("High Score: " + highScore, width/2, height/2 + 80);
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
  
  // Reset game variables for the next round
  score = 0;
  lives = 3;
  x = width/2;
  y = height/2;
  vx = random(-5, 5);
  vy = random(-5, 5);
}
