//Jennifer Tsai
//Mode Framework 
//Oct 9, 2020 


//MODE VARIABLES 
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3; 
final int OPTIONS = 4;
final int UTILITIES = 5;
 

//TARGET VARIABLES
float x, y, d;
float vx, vy; //target velocity 
int score, lives;

//sound variables
Minim minim; 
AudioPlayer theme, coin, bump, gameover; 
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//scores
int highscore;

//reset
float reset; 

//stamps 
PImage happyFace;
boolean happyOn; 

PImage straightFace;
boolean straightOn;

PImage deadFace;
boolean deadOn;

//indicator
float circleDia;

//slider
float sliderX;

//image varible
PImage selectedImage;


void setup() {
  size(800, 800); 
  mode = INTRO;
  textAlign(CENTER, CENTER);
  //rectMode(CENTER); 
  
  //target setup
  x = width/2;
  y = height/2;
  
  d = 100; 
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //scores 
  score=0;
  lives=3; 
  highscore=0; 
  
  //stamps
  happyOn = false; 
  straightOn = false; 
  deadOn = false; 
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  
  //stamps 
  happyFace = loadImage("happy face.png");
  straightFace = loadImage("straight face.png");
  deadFace = loadImage("dead face.png"); 
  
  //slider
  sliderX = 290; 
  
  //indicator
  circleDia=100; 
  
  //default image on indicator 
  selectedImage=happyFace; 


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
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode); 
    
  }

}
