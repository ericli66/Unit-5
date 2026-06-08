void gameover() {
  textSize(60);

  if (leftScore > rightScore) {
    fill(orange); // Red
    text("LEFT SIDE WINS!", width/2, height/2-50);
  } else {
    fill(teal); // Blue
    text("RIGHT SIDE WINS!", width/2, height/2-50);
  }

  // Instructions to restart
  fill(255);
  textSize(20);
  text("Click anywhere to restart", width/2, height/2 + 100);
  
  //reset game
  resetGame();
}

void gameoverClicks() {
  mode = INTRO;
}
