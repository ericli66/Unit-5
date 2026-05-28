void gameover() {
  textSize(60);

  if (leftScore > rightScore) {
    fill(255, 0, 0); // Red
    text("LEFT SIDE WINS!", width/2, height/2-50);
  } else {
    fill(0, 0, 255); // Blue
    text("RIGHT SIDE WINS!", width/2, height/2-50);
  }

  // Instructions to restart
  fill(255);
  textSize(20);
  text("Click anywhere to restart", width/2, height/2 + 100);
}

void gameoverClicks() {
  mode = INTRO;
}
