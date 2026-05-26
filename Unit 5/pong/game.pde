void game () {
  background(0);

  //paddle
  circle(leftX, leftY, leftD);
  circle(rightX, rightY, rightD);

  //move paddles
  if (wkey == true) leftY = leftY - 5;
  if (skey == true) leftY = leftY + 5;
  if (upkey == true) rightY = rightY - 5;
  if (downkey == true) rightY = rightY + 5;

  //ball
  circle(ballX, ballY, ballD);

  //scoreboard
  textSize(50);
  fill(255, 0, 0);
  text(leftScore, width/4, 100);
  fill(0, 0, 255);
  text(rightScore, 3*width/4, 100);

  //moving
  fill(255);
  ballX = ballX + vx;
  ballY = ballY + vy;

  //scoring
  if (ballX < ballD/2 || ballX > width-ballD/2) vx = vx * -1;

  //bouncing
  if (ballY < ballD/2 || ballY > height-ballD/2) vy = vy * -1;

  //bouncing off left paddle
  if (dist(leftX, leftY, ballX, ballY) <= leftD/2 + ballD/2) {
    vx = (ballX - leftX)/20;
    vy = (ballY - leftY)/20;
  }

  //bouncing off right paddle
  if (dist(rightX, rightY, ballX, ballY) <= rightD/2 + ballD/2) {
    vx = (ballX - rightX)/20;
    vy = (ballY - rightY)/20;
  }
}

void gameClicks() {
}
