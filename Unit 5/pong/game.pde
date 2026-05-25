void game () {
  background(0);
  
  //paddle
  circle(leftX, leftY, leftD);
  circle(rightX, rightY, rightD);
  
  //ball
  circle(ballX, ballY, ballD);
}

void gameClicks() {
}
