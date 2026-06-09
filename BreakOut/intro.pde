void intro() {
  //animated gif
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0;
  
  if (growing) {
    titleSize = titleSize + 2;
    if (titleSize >= 100) {
      growing = false; // Turn around if too big
    }
  } else {
    titleSize = titleSize - 2;
    if (titleSize <= 20) {
      growing = true;  // Turn around if too small
    }
  }
  
  textSize(titleSize);
  fill(255);
  text("BREAKOUT", width / 2, 150);
  
  fill(255);
  textSize(40);
  text("click to start", width/2, 700);
}
void introClicks() {
  // If the user clicks inside that exact same button box...
  mode = GAME;
}
