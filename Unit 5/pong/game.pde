void game () {
  background(purple);
  
    //pause music
  theme.pause();

  //pause button
  fill(255);
  circle(400, 50, 60);
  fill(0);
  rect(390, 50, 10, 40);
  rect(410, 50, 10, 40);

  //paddle
  fill(orange);
  circle(leftX, leftY, leftD);
  fill(teal);
  circle(rightX, rightY, rightD);

  //ball
  fill(greenYellow);
  circle(ballX, ballY, ballD);



  //move paddles
  if (wkey == true) leftY = leftY - 5;
  if (skey == true) leftY = leftY + 5;

  if (AI == false) {
    if (upkey == true) rightY = rightY - 5;
    if (downkey == true) rightY = rightY + 5;
  } else {
    // Only move if the ball is on the right half of the screen
    if (ballX > width/2) {
      if (ballY < rightY) {
        rightY = rightY - 4; // Move up to meet the ball
      }
      if (ballY > rightY) {
        rightY = rightY + 4; // Move down to meet the ball
      }
    }
  }

  //limitation
  if (leftY < 150) leftY = 150;
  if (leftY > 450) leftY = 450;
  if (rightY < 150) rightY = 150;
  if (rightY > 450) rightY = 450;


  if (timer > 0) {
    // Only show countdown and count down the frames
    timer--;

    textAlign(CENTER, CENTER);
    textSize(75);
    fill(0);
    if (timer > 120) {
      text("3", width/2, height/2);
    } else if (timer > 60) {
      text("2", width/2, height/2);
    } else if (timer > 0) {
      text("1", width/2, height/2);
    }
  } else {

    //moving ball
    ballX = ballX + vx;
    ballY = ballY + vy;

    //scoring
    if (ballX < 1) {
      score.rewind();
      score.play();
      rightScore++;
      resetGame(); // Call a helper function to reset positions
    }

    if (ballX > width-1) {
      score.rewind();
      score.play();
      leftScore++;
      resetGame();
    }



    //bouncing
    if (ballY < ballD/2) {
      ballY = ballD/2;
      vy = vy * -1;
    }

    if (ballY > height-ballD/2) {
      ballY = height-ballD/2;
      vy = vy * -1;
    }

    //bouncing off left paddle
    if (dist(leftX, leftY, ballX, ballY) <= leftD/2 + ballD/2) {
      vx = (ballX - leftX)/10;
      vy = (ballY - leftY)/10;
      bounce.rewind();
      bounce.play();
    }

    //bouncing off right paddle
    if (dist(rightX, rightY, ballX, ballY) <= rightD/2 + ballD/2) {
      vx = (ballX - rightX)/10;
      vy = (ballY - rightY)/10;
      bounce.rewind();
      bounce.play();
    }

    if (leftScore == 3 || rightScore == 3) {
      gameover.rewind();
      gameover.play();
      mode = GAMEOVER;
    }
  }
  //scoreboard
  textSize(50);
  fill(orange);
  text(leftScore, width/4, 100);
  fill(teal);
  text(rightScore, 3*width/4, 100);
}

void gameClicks() {
  if ( dist(mouseX, mouseY, 400, 50) < 30) {
    mode = PAUSE;
  }
}

void resetGame() {
  //reset paddle
  leftX = 0;
  leftY = height/2;
  rightX = width;
  rightY = height/2;
  //reset ball
  ballX = width/2;
  ballY = height/2;
  // Randomize vy
  if (random(10) > 5) {
    vx = 6;
  } else {
    vx = -6;
  }

  // Randomize vx
  if (random(10) > 5) {
    vy = 6;
  } else {
    vy = -6;
  }
  timer = 180; // 3 seconds
}
