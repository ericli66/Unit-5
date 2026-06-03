void game () {
  background(0);

  fill(255);
  circle(paddleX, paddleY, paddleD);

  //ball
  circle(ballX, ballY, ballD);

  //moving ball
  ballX = ballX + vx;
  ballY = ballY + vy;
  
    //move paddles
  if (akey == true) paddleX = paddleX - 5;
  if (dkey == true) paddleX = paddleX + 5;

  //bouncing
  if (ballY < ballD/2) vy = vy * -1;
  if (ballY > height-ballD/2)  vy = vy * -1;
  if (ballX < ballD/2) vx = vx * -1;
  if (ballX > width-ballD/2)  vx = vx * -1;

  //bouncing off left paddle
  if (dist(paddleX, paddleY, ballX, ballY) <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX)/20;
    vy = (ballY - paddleY)/20;
  }
}

void gameClicks() {
}
