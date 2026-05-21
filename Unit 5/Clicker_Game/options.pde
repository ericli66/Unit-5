void options() {
  background(200); 
  imageMode(CENTER); // Makes drawing fruits in boxes easier
  
  // Title
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(80);
  text("Options", 400, 60);

  // --- 1. FRUIT SELECTION ---
  textSize(25);
  text("1. Choose a Fruit", 400, 130);

  // Banana Box
  strokeWeight( (dist(mouseX, mouseY, 250, 200) < 50) ? 10 : 1 );
  fill(255);
  rect(250, 200, 100, 100);
  image(banana, 250, 200, 70, 70); 

  // Apple Box (Load image in setup)
  strokeWeight( (dist(mouseX, mouseY, 400, 200) < 50) ? 10 : 1 );
  fill(255);
  rect(400, 200, 100, 100);
  image(apple, 400, 200, 70, 70); 

  // Orange Box (Load image in setup)
  strokeWeight( (dist(mouseX, mouseY, 550, 200) < 50) ? 10 : 1 );
  fill(255);
  rect(550, 200, 100, 100);
  image(orange, 550, 200, 70, 70); 

  // --- 2. SIZE SLIDER ---
  fill(0);
  text("2. Adjust Size", 400, 300);
  
  stroke(0);
  strokeWeight(4);
  line(300, 340, 500, 340); // Slider Track
  
  // Slider Handle
  strokeWeight( (dist(mouseX, mouseY, sliderX, 340) < 15) ? 5 : 1 );
  fill(250, 180, 5);
  circle(sliderX, 340, 30); 

  // Slider Logic
  if (mousePressed && mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 360) {
    sliderX = mouseX;
  }
  fruitSize = map(sliderX, 300, 500, 40, 200);

  // --- 3. THE VISUAL PREVIEW ---
  // This shows the fruit growing/shrinking based on the slider
  noFill();
  stroke(150);
  strokeWeight(1);
  rect(400, 440, 210, 210); // A light box to show the "preview area"
  
  if (selectedFruit != null) {
    image(selectedFruit, 400, 440, fruitSize, fruitSize);
  }

  // --- BACK BUTTON ---
  strokeWeight( (mouseX > 300 && mouseX < 500 && mouseY > 560 && mouseY < 600) ? 10 : 1 );
  fill(255);
  rect(400, 570, 200, 50);
  fill(0);
  textSize(30);
  text("Back", 400, 570);
}

void optionsClicks() {
  // Select Banana
  if (dist(mouseX, mouseY, 250, 200) < 50) selectedFruit = banana;
  
  // Select Apple
  if (dist(mouseX, mouseY, 400, 200) < 50) selectedFruit = apple; 
  
  // Select Orange
  if (dist(mouseX, mouseY, 550, 200) < 50) selectedFruit = orange;

  // Back Button
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 590) {
    mode = INTRO;
  }
}
