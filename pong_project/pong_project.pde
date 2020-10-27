import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pong
//Daryan
//1-1a
//October 15 



//mode framework
int mode;
final int INTRO =1;
final int GAME =2;
final int PAUSE =3;
final int GAMEOVER =4;

//sound variables
Minim minim;
AudioPlayer theme, left, right, wall, score, clap;


//entitiy variables
float leftx, lefty, leftd, rightx, righty, rightd;// paddles
float ballx, bally, balld, vx, vy; //ball
boolean AI;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//scoreboard variables
int leftscore, rightscore,timer;

void setup () {
 size (800, 600);
 mode=INTRO;

 //initialize paddles
 leftx=0;
 lefty=300;
 leftd= 200;

 rightx= 800;
 righty=300;
 rightd=200;


 //initialize ball
 ballx=width/2;
 bally=height/2;
 balld=100;
 vx=random(5,-5);
 vy=random(5,-5);

 //initialize keyboard
 wkey=skey=upkey=downkey=false;

//initialize scoreboard
leftscore=0;
rightscore=0;
timer=100;


//minim
minim=new Minim(this);
theme= minim.loadFile("mario bros theme.mp3");
left= minim.loadFile("leftpaddle.wav");
right=minim.loadFile("rightpaddle.wav");
score= minim.loadFile("score.wav");
clap= minim.loadFile("clapping.wav");
wall= minim.loadFile("wall.wav");

}

void draw() {

  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  }  else {
    println("Mode error:" +mode);

  }
}
