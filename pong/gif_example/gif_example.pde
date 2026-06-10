PImage[] gif;
int numberOfFrames;
int f=0;

void setup() {
  size(800, 800);
  numberOfFrames = 90;
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  while ( i < numberOfFrames) {
    gif[i] = loadImage("frame_" + i + "_delay-0.03s.gif");
    i++;
  }
  
}

void draw() {
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0;
}
