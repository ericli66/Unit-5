void pause() {
  //resume button
    noStroke();
  fill(255);
  circle(50, 50, 80);
  fill(0);
  triangle(35, 30, 75, 50, 35, 75);
  
  //pause music
  theme.pause();
}

void pauseClicks() {
  if( dist(mouseX, mouseY, 50, 50) < 40){
  mode = GAME;
  }
}
