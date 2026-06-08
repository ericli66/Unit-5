void game () {
  //background image
  image(Intro, width/2, height/2);

  //paly music
  theme.play();

  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);

  //pause button
  noStroke();
  fill(255);
  circle(50, 50, 80);
  fill(0);
  rect(35, 50, 10, 50);
  rect(65, 50, 10, 50);


  //display ratget
  fill(255);
  stroke(0);
  strokeWeight(5);
  image(selectedFruit, x, y, fruitSize, fruitSize);

  //moving
  x = x +vx;
  y = y + vy;

  //bouncing
  if (x < fruitSize/2 || x > width-fruitSize/2) vx = vx * -1;
  if (y < fruitSize/2 || y > height-fruitSize/2) vy = vy * -1;
}

void gameClicks() {
  if ( dist(mouseX, mouseY, x, y) < fruitSize/2+25) {
    score = score + 1;
    coin.rewind();
    coin.play();
    vx = vx * 1.1;
    vy = vy * 1.1;
  } else if ( dist(mouseX, mouseY, 50, 50) < 40) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    gameover.rewind();
    gameover.play();
    
    if (lives == 0) {
      // Check for a new high score before going to gameover
      if (score > highScore) {
        highScore = score;
      }
      mode = GAMEOVER;
    }
  }
}
