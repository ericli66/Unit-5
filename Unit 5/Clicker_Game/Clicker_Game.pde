//Eric Li
//Block 2-4

//Mode VAriables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER =3;

//font
PFont font;


//Target Variable
float x, y, z;
float vx, vy;

//Color pallete

void setup() {
  size(800, 600);
  mode = INTRO;
  
  //loading font
  font = createFont("AlteHaasGroteskRegular.ttf", 200);
  
  //target setup
  
  x = width/2;
  y = height/2;
  z = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);;
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
    println("Error: Mode = " + mode);
  }
}
