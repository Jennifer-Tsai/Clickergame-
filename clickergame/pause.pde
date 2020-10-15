void pause() {
  //background(0); 
  theme.pause(); 
  
  fill(0); 
  textSize(60); 
  text("PAUSE", 400, 400); 
  
}


void pauseClicks() {
   if (dist(mouseX, mouseY, 100, 100) < 50) {
     mode = GAME;
    }
  
  
}
