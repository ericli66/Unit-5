void game () {
  background(purple);

  //paddle
  fill(255);
  circle(paddleX, paddleY, paddleD);

  //ball
  strokeWeight(1);
  circle(ballX, ballY, ballD);

  //moving ball
  ballX = ballX + vx;
  ballY = ballY + vy;

  //move paddles
  if (akey == true) paddleX = paddleX - 5;
  if (dkey == true) paddleX = paddleX + 5;

  //restricting paddle
  if (paddleX <= paddleD/2) paddleX = paddleD/2;
  if (paddleX >= width - paddleD/2) paddleX = width - paddleD/2;

  //bouncing off walls 
  if (ballY < ballD/2) vy = vy * -1; 
  if (ballX < ballD/2) vx = vx * -1;
  if (ballX > width-ballD/2)  vx = vx * -1;

  // Check if ball falls past the bottom edge (Losing a life)
  if (ballY > height + ballD) {
    lives--; // Lose a life
    
    if (lives <= 0) {
      mode = GAMEOVER;
    } else {
      // Reset ball to the center/paddle area so the game can continue
      ballX = width / 2;
      ballY = height / 2;
      vx = 0;
      vy = 5; // Send it back down
    }
  }

  //bouncing off paddle
  if (dist(paddleX, paddleY, ballX, ballY) <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX)/20;
    vy = (ballY - paddleY)/20;
  }

  //bricks
  int i = 0;
  while (i < n) {
    if (alive[i] == true) manageGame(i);
    i++;
  }
  
  // --- HUD / DISPLAY SCORE AND LIVES ---
  textSize(24);
  fill(255);
  
  // Score in bottom left
  textAlign(LEFT, BOTTOM);
  text("Score: " + score, 20, height - 20);
  
  // Lives in bottom right
  textAlign(RIGHT, BOTTOM);
  text("Lives: " + lives, width - 20, height - 20);
  
  
}

void gameClicks () {
}

void manageGame(int i) {
  if (y[i] == 100) fill(teal);
  if (y[i] == 200) fill(green);
  if (y[i] == 300) fill(greenYellow);
  if (y[i] == 400) fill(orange);
  circle(x[i], y[i], brickD);
  
  //bouncing off bricks
  if (dist(x[i], y[i], ballX, ballY) <= brickD/2 + ballD/2) {
    vx = (ballX - x[i])/5;
    vy = (ballY - y[i])/5;
    alive[i] = false;
    
    score++; // Increment score when a brick breaks!
  }
}
