void intro() {
 background(40, 100, 200); 
 fill(0,255,10);
 rect (300, 400, 200, 80);
 
 textSize(150);
 textAlign(CENTER);
 text("PONG!", 400, 250);
}

void introClicks() {
  //if(mouseX>300 && mouseX <500 && mouseY > 400 && mouseY < 480) {
  mode=GAME;
  
  }
