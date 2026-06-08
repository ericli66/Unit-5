void options() {
  //background image
  image(Intro, width/2, height/2);

  // Title
  fill(0);
  textSize(80);
  text("Options", 400, 60);

  //FRUIT SELECTION
  textSize(25);
  text("1. Choose a Fruit", 400, 130);
  
  drawFruit(250, 200, 100, 100, banana);
  drawFruit(400, 200, 100, 100, apple);
  drawFruit(550, 200, 100, 100, orange);

  //SIZE SLIDER
  fill(0);
  text("2. Adjust Size", 400, 300);

  stroke(0);
  strokeWeight(4);
  line(300, 340, 500, 340); // Slider Track

  // Slider Handle
  if (dist(mouseX, mouseY, sliderX, 340) < 15) {
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
  fill(250, 180, 5);
  circle(sliderX, 340, 30);

  // Slider Logic
  if (mousePressed && mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 360) {
    sliderX = mouseX;
  }
  fruitSize = map(sliderX, 300, 500, 40, 200);

  // fruit growing/shrinking based on the slider
  image(selectedFruit, 400, 440, fruitSize, fruitSize);

  // --- BACK BUTTON ---
  textSize(30);
  drawButton(400, 550, 200, 50, 40, "Back");
}

void optionsClicks() {
  // Select Banana
  if (dist(mouseX, mouseY, 250, 200) < 50) selectedFruit = banana;

  // Select Apple
  if (dist(mouseX, mouseY, 400, 200) < 50) selectedFruit = apple;

  // Select Orange
  if (dist(mouseX, mouseY, 550, 200) < 50) selectedFruit = orange;

  // Back Button
  if (mouseX > 300 && mouseX < 500 && mouseY > 525 && mouseY < 575) {
    mode = INTRO;
  }
}


void drawFruit(int x, int y, int w, int h, PImage label) {

  // Check if mouse is over button
  if (mouseX > x - w/2 && mouseX < x + w/2 &&
    mouseY > y - h/2 && mouseY < y + h/2) {
    strokeWeight(10);
  } else {
    strokeWeight(1);
  }

  fill(0, 0, 0, 0);
  rect(x, y, w, h);

  image(label, x, y, w, h);
}
