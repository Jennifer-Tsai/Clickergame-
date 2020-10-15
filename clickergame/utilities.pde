void reset() {
  //target
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);

  //game 
  score = 0;
  lives = 3;
}

void resetCircle() {
  //for pause button 
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(100, 100, circleDia);
}

void rectTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(103, 207, 277);
  } else {
    fill(255);
  }
}


void stampTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(103, 207, 277);
    image(selectedImage, 170, 540, 60, 60);
  } else {
    fill(255);
  }
}
