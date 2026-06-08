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
boolean[] alive;
int n;
int brickD;
int tempX, tempY;

//colors
color purple = #483C46;
color teal = #3c6e71;
color green = #70ae6e;
color greenYellow = #beee62;
color orange = #f4743b;


void setup() {
  size(800, 800);
  mode = INTRO;

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  //setup baddles
  paddleX = width/2;
  paddleY = height;
  paddleD = 150;

  ballX = width/2;
  ballY = 3*height/4;
  ballD = 10;

  vx = 0;
  vy = 2;

  akey = dkey = false;

  //set up array, instantiation
  brickD = 50;
  n = 28;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempX = 100;
  tempY = 100;

  int i = 0;
  while ( i < n) {
    x[i] = tempX;
    y[i] = tempY;
    alive[i] = true;
    tempX = tempX +100;
    if (tempX == width) {
      tempX =100;
      tempY = tempY + 100;
    }
    i++;
  }
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
