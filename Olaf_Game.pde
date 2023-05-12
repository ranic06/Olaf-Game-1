float x, y;
int d, e;
float a, b, vx, vy;
float q, w;
float speed = 5;
boolean timeOver = false;
int state = 0;
int elapsedTime = 0;
PShape snow;
int number = 50;
float p[] = new float[number];
float o[] = new float[number];
float speedY[] = new float[number];
float r[] = new float[number];
int score = 0;

void setup() {
  size(1000, 800);
  vx = vy = 5;
  x = 100;
  //snow
  smooth();
  shapeMode(CENTER);
  snow = loadShape("snowFlake0.svg");
  imageMode(CENTER);
  smooth();
  for (int i=0; i<number; i++) {
    p[i] = random(0, width);
    o[i] = random(0, height/2);
    speedY[i] = random(3, 6);
    r[i] = random(30, 50);
  }
}

void draw() {
  if (state == 0) { // 1. ready to restart
    readyToStart();
  } else if (state == 1) { // 2. playing
    playing();
  } else if (state == 2) { // 3. timeover
    retry();
  }
}

void mouseReleased() {
  if (state == 0) { // 1. ready to restart
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 - 50 && mouseY < height/2 + 50) {
      state = 1;
    }
  } else if (state == 1) { // 2. playing
  if(timeOver == true){
    state = 2;
  }
  } else if (state == 2) { // 3. timeover & Retry
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 + 300 - 50 && mouseY < height/2 + 300 + 50) {
      state = 0;
    }
  }
}
