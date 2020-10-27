void pause() {
  fill(0);
triangle(50, 30, 100, 60, 50, 90);
textSize(100);
fill(220, 10, 235);
text("PAUSED", 400, 250);
theme.pause();
}

void pauseClicks() {
if(dist(mouseX, mouseY, 80, 80) < 50) {
   mode=GAME;
   theme.play();
  }
}
