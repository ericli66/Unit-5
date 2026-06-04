void game () {
  background(0);

  //bricks
  int i = 0;
  while (i < n) {
    circle(x[i], y[i], brickD);
    i = i + 1;
  }
    //bouncing off paddle
  if (dist(x[i], y[i], ballX, ballY) <= paddleD/2 + ballD/2) {
    vx = (ballX - x[i])/20;
    vy = (ballY - y[i])/20;
  }

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

  //bouncing off walls
  if (ballY < ballD/2) vy = vy * -1;
  if (ballY > height-ballD/2)  vy = vy * -1;
  if (ballX < ballD/2) vx = vx * -1;
  if (ballX > width-ballD/2)  vx = vx * -1;

  //bouncing off paddle
  if (dist(paddleX, paddleY, ballX, ballY) <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX)/20;
    vy = (ballY - paddleY)/20;
  }
}

void gameClicks() {
}
