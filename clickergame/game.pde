void game() {

  background(55, 247, 220); 
  theme.play(); 

  strokeWeight(5); 
  textSize(30); 
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100); 

  //pause button
  fill(255);
  stroke(0); 
  circle(100, 100, circleDia);

  line(110, 85, 110, 120);
  line(90, 85, 90, 120);

  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d); 
  image(selectedImage, x-28, y-22, 60, 60);
  //ellipse(x, y, 100, 100); 

  //moving 
  x = x + vx;
  y = y + vy; 

  //bouncing 
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }

  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}


void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1; 
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
    //line(90, 85, 120, 105); 
    //line(120, 105, 90, 125);
    resetCircle();
    fill(0);
    triangle(90, 80, 125, 100, 90, 125);
  } else {
    background(255, 0, 0); 
    lives=lives-1; 
    bump.rewind();
    bump.play();
    if (lives == 0) mode = GAMEOVER;
  }
  if (mode == GAMEOVER) {
    lives = 3;
  }
}
