void intro() {
  background(0);
  
  // Title
  fill(255);
  textSize(60);
  text("CIRCULAR PONG", width/2, height/4);
  
  // 1 Player Button
  stroke(255);
  fill(0);
  rect(width/4, height/2, 200, 60);
  fill(255);
  textSize(25);
  text("1 PLAYER", width/4, height/2);
  
  // 2 Player Button 
  fill(0);
  rect(3*width/4, height/2, 200, 60);
  fill(255);
  text("2 PLAYER", 3*width/4, height/2);
}

void introClicks() {
  // Check for 1 Player Button 
  if (mouseX > width/4 - 100 && mouseX < width/4 + 100 && mouseY > height/2 - 30 && mouseY < height/2 + 30) {
    AI = true;
    mode = GAME;
    resetGame();
  }
  
  // Check for 2 Player Button
  if (mouseX > 3*width/4 - 100 && mouseX < 3*width/4 + 100 && mouseY > height/2 - 30 && mouseY < height/2 + 30) {
    AI = false;
    mode = GAME;
    resetGame();
  }
}
