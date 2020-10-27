void game() {

  background(0,255,10);
  //paddles
 fill(200,40,40);
 circle(leftx, lefty, leftd); 
 circle(rightx, righty, rightd);

 //move paddles
 if(wkey==true) lefty = lefty -15;
 if (skey==true) lefty=lefty+15;
 if(upkey==true) righty= righty - 15;
 if(downkey==true) righty=righty+15;
 
 //sorry Mr. Pelletier I couldnt figure out how to make the AI beatable
 /*if(AI == false) {
  if(downkey==true) righty =righty -5;
  if(downkey==true) righty=righty + 5;
 } else*/
    if(AI==true){
   if(bally>righty) {
     righty=bally+120;
   }
   if(bally<righty) {
     righty=bally-120;
   }
   
   
 }
 
 if(lefty<0){
   lefty=0;
 }
 if(lefty>600){
   lefty=600;
 }
  if(righty<0){
   righty=0;
 }
 if(righty>600){
   righty=600;
 }
 

 
 fill(40, 100, 200);
 rect(390, 0, 20, 600);
 fill(255);
 //ball
 circle(ballx, bally, balld);


//moving
if(timer<0) {
 ballx=ballx + vx;
 bally=bally +vy;
}
 
if(bally<0) {
   bally=10;
}
 if(bally>600) {
   bally=590;
 }
//scoring 
if(ballx<0) {
  rightscore++;
  ballx=width/2;
  bally=height/2;
  timer=100;
}

if(ballx>800) {
 leftscore++ ;
 ballx=width/2;
  bally=height/2;
  timer=50;
}

//bouncing

if(bally<0 || bally> height-50) {
 vy=vy*-1; 
}

//collisions
if(dist(leftx, lefty, ballx, bally)<=150) {
 vx=(ballx-leftx)/10;
 vy=(bally-lefty)/10;
 left.rewind();
 left.play();
}
if(dist(rightx, righty, ballx, bally)<=150) {
 vx=(ballx-rightx)/10;
 vy=(bally-righty)/10; 
 right.rewind();
 right.play();
}

//scoreboard
textSize(50);
fill(245, 5 ,230);
text(leftscore, width/4, 100);
text(rightscore, 3*width/4, 100);

//pause button
  fill(0);
   rect(50, 50, 5, 25);
    rect(70, 50, 5, 25);
    

timer=timer-1;

if(rightscore==10||leftscore==10) {
  mode=GAMEOVER;
   
}
 
}

void gameClicks() {
if(dist(mouseX, mouseY, 80, 80) < 50) {
   mode=PAUSE;
  } 
}
