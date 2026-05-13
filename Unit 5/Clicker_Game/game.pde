void game () {
  background(0, 0, 255);
  
  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  //display ratget
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, z);
  
  //moving 
  x = x +vx;
  y = y + vy;
  
  //bouncing
  if (x < z/2 || x > width-z/2) {
    vx = vx * -1;
  }
    if (y < z/2 || y > height-z/2) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if ( dist(mouseX, mouseY, x, y) < 50) {
    score = score + 1;
    coin.rewind();
    coin.play();
  } else {
    lives = lives - 1;
    gameover.rewind();
    gameover.play();
    if (lives == 0) mode = GAMEOVER;
  }
}
