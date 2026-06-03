void intro() {
  background(100); 
  
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

  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    strokeWeight(10);
    
  } else {
    strokeWeight(1);
  }
  
  // Draw the button box 
  rect(400, 400, 200, 100); 
  
  // Draw the button text
  fill(0);
  textSize(24);
  text("START", 400, 400);
}

void introClicks() {
  // If the user clicks inside that exact same button box...
  if (mouseX > 300 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
  }
}
