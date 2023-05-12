void playing() {
  background(174, 211, 236);

  //snow
  if (elapsedTime > 120) {
    for (int i=0; i<number; i++) {
      o[i] += speedY[i];
      shape(snow, p[i], o[i], r[i], r[i]);
      if (o[i]>height) o[i] = 0;
    }
  }

  //score text
  fill(0);
  textSize(32);
  textAlign(LEFT);
  text("Score:" + int(score), 20, 40);

  olaf();
  collipse();
  time();
}
