//ERic Li
//2-4
//June 3, 2026

//modeFramework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//target variables
float paddleX, paddleY, paddleD;
float ballX, ballY, ballD; //ball
float vx, vy;
float titleSize = 50;
boolean growing = true;

//keyboard variables
boolean akey, dkey;

//Brick Variables;
int[] x;//declaration
int[] y;



void setup() {
  size(800, 600);
  mode = INTRO;

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  //setup baddles
  paddleX = 400;
  paddleY = 600;
  paddleD = 200;

  ballX = width/2;
  ballY = height/2;
  ballD = 15;

  vx = 0;
  vy = 2;

  akey = dkey = false;

  //set up array, instantiation
  x = new int[3];
  y = new int[3];
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("mode error: " + mode);
  }
}
