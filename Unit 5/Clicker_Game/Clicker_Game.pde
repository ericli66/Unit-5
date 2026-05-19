//Eric Li
//Block 2-4

//sound effects
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variables
Minim minim;
AudioPlayer theme, coin, gameover;

//Mode VAriables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER =3;
final int OPTIONS = 4;

//font
PFont font;

//image
PImage Intro;
PImage banana;


//Target Variable
float x, y, z;
float vx, vy;
int score, lives;

//Color pallete

void setup() {
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //load backgound
  Intro = loadImage("Intro.jpg");
  Intro.resize(width, height);
  
  //load fruit
  banana = loadImage("banana.png");
  banana.resize(100, 100);
  
  //loading font
  font = createFont("AlteHaasGroteskRegular.ttf", 200);

  //target setup

  x = width/2;
  y = height/2;
  z = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  coin = minim.loadFile("SUCCESS.wav");
  gameover = minim.loadFile("FAILURE.wav");
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
  } else if (mode== OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
