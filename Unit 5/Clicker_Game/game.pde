void game () {
  background(0, 0, 255);
  
  //display ratget
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, z);
  
  //moving 
  x = x +vx;
  y = y + vy;
  
  //bouncing
  if (x < 0 
  
}

void gameClicks() {
  mode = GAMEOVER;
}
