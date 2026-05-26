//ERic Li
//2-4
//May 14, 2026

//modeFramework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//target variables
float leftX, leftY, leftD, rightX, rightY, rightD; //paddles
float ballX, ballY, ballD; //ball
float vx, vy;
int leftScore, rightScore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;



void setup() {
  size(800, 600);
  mode = GAME;

  leftX = 0;
  leftY = height/2;
  leftD = 200;
  rightX = width;
  rightY = height/2;
  rightD = 200;

  ballX = width/2;
  ballY = height/2;
  ballD = 100;
  
  vx = 5;
  vy = 5;
  
  //intialize keyboard vars
  wkey = skey = upkey = downkey = false;
}

void draw() {
  if (mode == INTRO) {
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
