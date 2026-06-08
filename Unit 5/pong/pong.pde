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
boolean AI;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//colors
color purple = #483C46;
color teal = #3c6e71;
color green = #70ae6e;
color greenYellow = #beee62;
color orange = #f4743b;



void setup() {
  size(800, 600);
  mode = INTRO;

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  leftX = 0;
  leftY = height/2;
  leftD = 150;
  rightX = width;
  rightY = height/2;
  rightD = 150;

  ballX = width/2;
  ballY = height/2;
  ballD = 75;

  resetGame();

  //intialize keyboard vars
  wkey = skey = upkey = downkey = false;
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
