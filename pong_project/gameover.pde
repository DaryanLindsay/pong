void gameover() {
background(40,255,10);
fill(40, 40, 250);
textSize(50);
if(leftscore>rightscore) {
  text("Left Wins!!!", 400, 200);
} else {
  text("Right Wins!!!", 400, 200);
}
clap.rewind();
clap.play();
fill(250, 40, 70);
rect(300, 250, 200, 100);
fill(195, 10, 235);
textSize(25);
text("Back To Menu", 400, 300);
}

void gameoverClicks() {
  
  
 if(mouseX>300 && mouseX <500 && mouseY > 250 && mouseY < 350) {
  mode=INTRO; 
  leftscore=0;
  rightscore=0;
  theme.rewind();
 }
}
