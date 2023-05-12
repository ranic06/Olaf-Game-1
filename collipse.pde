void collipse() {
  float rectX = x + d * 3 / 4;
  float rectY = y - d / 2;
  float rectWidth = 50;
  float rectHeight = 100;

  for (int i = 0; i < number; i++) {
    if (p[i] >= rectX && p[i] <= rectX + rectWidth &&
      o[i] >= rectY - rectHeight && o[i] <= rectY) {
      score += 1;
      o[i] = -200;
      println("score" + score);
    }
  }
}

void time() {
  elapsedTime++;
  if (elapsedTime > 1800) {
    timeOver = true;
    background(255, 0, 0);
    textAlign(CENTER, CENTER);
    fill(0);
    text("TIME OVER", width / 2, height / 2);
    text("Score: " + int(score), width / 2, (height + d) / 2);
    retry();
  }
}

void retry() {
  fill(255);
  rectMode(CENTER);
  rect(width/2, (height/2)+300, 200, 50);
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Retry", width/2, height/2+300);
}
