void game () {
  background(purple);

  //paddle
  fill(255);
  circle(paddleX, paddleY, paddleD);

  //ball
  strokeWeight(1);
  circle(ballX, ballY, ballD);


  //bouncing off paddle
  if (dist(paddleX, paddleY, ballX, ballY) <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX)/15;
    vy = (ballY - paddleY)/15;
  }

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
}

void gameClicks() {
}

void manageGame(int i) {
  if (y[i] == 100) fill(teal);
  if (y[i] == 200) fill(green);
  if (y[i] == 300) fill(greenYellow);
  if (y[i] == 400) fill(orange);
  circle(x[i], y[i], brickD);
  //boucing off bricks
  if (dist(x[i], y[i], ballX, ballY) <= brickD/2 + ballD/2) {
    vx = (ballX - x[i])/5;
    vy = (ballY - y[i])/5;
    alive[i] = false;
  }
}
