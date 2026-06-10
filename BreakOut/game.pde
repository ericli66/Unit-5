void game () {
  background(purple);

  //pause music
  theme.pause();
  
    //pause button
  fill(255);
  circle(400, 40, 60);
  fill(0);
  rect(390, 40, 10, 40);
  rect(410, 40, 10, 40);

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

  // Check if ball falls past the bottom edge
  if (ballY > height + ballD) {
    lives--; // Lose a life
    gameover.rewind();
    gameover.play();

    if (lives <= 0) {
      mode = GAMEOVER;
    } else {
      // Reset ball to the center/paddle area so the game can continue
      ballX = width / 2;
      ballY = 2*height / 3;
      vx = 0;
      vy = 5;
    }
  }

  //bouncing off paddle
  if (dist(paddleX, paddleY, ballX, ballY) <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX)/15;
    vy = (ballY - paddleY)/15;
    bounce.rewind();
    bounce.play();
  }

  //bricks
  int i = 0;
  while (i < n) {
    if (alive[i] == true) manageGame(i);
    i++;
  }
  if (score ==28) mode = GAMEOVER;

  //show score and lives
  textSize(24);
  fill(255);

  text("Score: " + score, 60, 30);

  text("Lives: " + lives, width - 60, 30);
}

void gameClicks () {
    if ( dist(mouseX, mouseY, 400, 50) < 30) {
    mode = PAUSE;
  }
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
    scored.rewind();
    scored.play();
    score++; // Increment score when a brick breaks!
  }
}
