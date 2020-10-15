void gameover() {
  background(47, 245, 108); 

  //music 
  theme.pause(); 
  gameover.play(); 

  textSize(60); 
  text("GAME OVER", 400, 340);  
  if (score > highscore) {
    highscore = score;
  }

  text("High Score: " + highscore, 400, 470, 60); 

  //quit button
  fill(255); 
  rectTactile(550, 590, 150, 80);
  rect(550, 590, 150, 80);
  fill(0); 
  textSize(35); 
  text("Quit", 625, 625);
}


void gameoverClicks() {
  reset(); 
  mode = INTRO;
  theme.rewind(); 

  //return to intro 
  if (mouseX > 550 && mouseX < 700 && mouseY > 590 && mouseY < 670) {
    mode = INTRO;
    stroke(94, 141, 252);
  }
}
