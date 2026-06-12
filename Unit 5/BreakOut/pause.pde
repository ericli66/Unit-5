void pause() {
  //resume button
  noStroke();
  fill(255);
  circle(400, 40, 60);
  fill(0);
  triangle(390, 20, 420, 40, 390, 60);
  

}

void pauseClicks() {
  if ( dist(mouseX, mouseY, 400, 50) < 40) {
    mode = GAME;
  }
}
