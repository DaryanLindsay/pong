void intro() {
  stroke(0);
theme.play();
 background(40, 100, 200); 
 fill(0,255,10);
 rect (300, 400, 200, 80);
 textSize(150);
 textAlign(CENTER);
 text("PONG!", 400, 250);
 fill(220, 10, 235);
 textSize(50);
 text("PLAY", 400, 460);
 AI=false;
 
 if(dist(340,375,mouseX, mouseY)<80) {
   stroke(90, 235, 2);
 } else{
   stroke(0);
 }

 rect(300, 340, 80, 50);
 
 if(dist(450,340, mouseX, mouseY)<80) {
   stroke(90, 235, 2);
 } else{
   stroke(0);
 }
 rect(450, 340, 80, 50);
 text("Players", 400, 300);
 fill(0,255,0);
 textSize(25);
 text("1", 340, 375);
 text("2",490, 375);
}

void introClicks() {
  if(mouseX>300 && mouseX <500 && mouseY > 400 && mouseY < 480) {
  mode=GAME;

  }
  
  if(mouseX>300&& mouseX<380&&mouseY>340&&mouseY<390); {
    AI=true;
  }
  
  if(mouseX>450&& mouseX <520 && mouseY > 340 && mouseY<390); {
    AI=false;
  }
  
}
