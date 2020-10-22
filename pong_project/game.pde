void game() {
  
  background(0,255,10);
  //paddles
 fill(200,40,40);
 circle(leftx, lefty, leftd); 
 circle(rightx, righty, rightd);
 
 //move paddles
 if(wkey==true) lefty = lefty -10;
 if (skey==true) lefty=lefty+10;
 if(upkey==true) righty= righty - 10;
 if(downkey==true) righty=righty+10;
 
  
 fill(40, 100, 200);
 rect(390, 0, 20, 600);
 fill(255);
 //ball
 circle(ballx, bally, balld);

 
}

void gameClicks() {
  
}
