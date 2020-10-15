void intro() {
  background(56, 168, 222); 

  //into music 
  theme.play(); 


  //game title 
  fill(0); 
  textSize(50);
  textAlign(CENTER, CENTER);
  text("CLICKER GAME", 400, 300); 

  //start button
  fill(255); 
  rectTactile(190, 500, 200, 100); 
  strokeWeight(5);
  rect(190, 500, 200, 100);

  fill(0); 
  textSize(35);
  textAlign(CENTER, CENTER);
  text("Start", 290, 545); 

  //options button 
  fill(255);
  rectTactile(430, 500, 200, 100);
  rect(430, 500, 200, 100);

  fill(0);
  textSize(35);
  textAlign(CENTER, CENTER);
  text("Options", 530, 545);
}

void introClicks() {
  //start button
  if (mouseX > 190 && mouseX < 390 && mouseY > 500 && mouseY < 600) {
    mode=GAME; 
    stroke(94, 141, 252);
  }

  //options button
  if (mouseX > 430 && mouseX < 630 && mouseY > 500 && mouseY < 600) {
    mode=OPTIONS;
    stroke(94, 141, 252);
  }
}
