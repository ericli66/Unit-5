void pause() {
  //resume button
  noStroke();
  fill(255);
  circle(400, 50, 80);
  fill(0);
  triangle(385, 25, 425, 50, 385, 75);

}

void pauseClicks() {
  if ( dist(mouseX, mouseY, 400, 50) < 40) {
    mode = GAME;
  }
}
