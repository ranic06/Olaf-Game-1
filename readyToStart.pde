void readyToStart() {
  timeOver = false;
  elapsedTime = 0;
  x = 0;
  score = 0;
  
  background(0, 191, 255);
  fill(255);
  rectMode(CENTER);
  rect(width/2, height/2, 200, 100);
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Start", width/2, height/2);
  textSize(50);
}
