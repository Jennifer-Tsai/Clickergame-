void options() {
  background(71, 108, 118); 

  //lettering
  fill(255);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("OPTIONS", 400, 90); 

  //back to intro button
  rectTactile(550, 580, 170, 80); 
  stroke(94, 241, 252);
  strokeWeight(5);
  rect(550, 580, 170, 80); 
  fill(0);
  textSize(35);
  textAlign(CENTER, CENTER);
  text("Back", 635, 615); 

  //indicator
  fill(255); 
  circle(200, 570, d); 
 
  //smile stamp 
  stampTactile(140, 160, 100, 100);
  happyOnOff();
  rect(135, 155, 110, 110);
  image(happyFace, 140, 160, 100, 100); 

  //straight face stamp 
  stampTactile(350, 160, 100, 100);
  straightOnOff();
  rect(345, 155, 110, 110);
  image(straightFace, 350, 160, 100, 100); 

  //dead face stamp
  stampTactile(560, 160, 100, 100);
  deadOnOff();
  rect(555, 155, 110, 110);
  image(deadFace, 560, 160, 100, 100); 

  //sliders 
  stroke(255);
  strokeWeight(5);

  line(290, 410, 510, 410);
  noStroke();
  fill(255);
  circle(sliderX, 410, 30);

}


void optionsClicks() {
  if (mouseX > 550 && mouseX < 720 && mouseY > 580 && mouseY < 660) {
    mode = INTRO;
    stroke(94, 241, 252);
  }

  //happy face stamp
  if (mouseX > 140 && mouseX < 240 && mouseY > 160 && mouseY < 260) {
    happyOn = !happyOn; 
    selectedImage=happyFace;
    image(selectedImage, 170, 540, 60, 60);
  }

  //straight face stamp 
  if (mouseX > 350 && mouseX < 450 && mouseY > 160 && mouseY < 260 ) {
    straightOn = !straightOn;
    selectedImage=straightFace;
    image(straightFace, 170, 540, 60, 60);
  }


  //dead face stamp 
  if (mouseX > 560 && mouseX < 660 && mouseY > 160 && mouseY < 260) {
    deadOn = !deadOn;
    selectedImage=deadFace;
    image(deadFace, 170, 540, 60, 60);
  }

} 


void happyOnOff() {
  if (happyOn == true) {
    stroke(0);
    strokeWeight(8);
    image(selectedImage, 170, 540, 60, 60);
  } else {
    stroke(94, 241, 252);
    strokeWeight(5);
  }
}


void straightOnOff() {
  if (straightOn == true) {
    stroke(0);
    strokeWeight(8);
    image(selectedImage, 170, 540, 60, 60);
  } else {
    stroke(94, 241, 252);
    strokeWeight(5);
  }
}


void deadOnOff() {
  if (deadOn == true) {
    stroke(0);
    strokeWeight(8);
    image(selectedImage, 170, 540, 60, 60);
  } else {
    stroke(94, 241, 252);
    strokeWeight(5);
  }
}


void controlSlider() {
  //sliders
  if (mouseX > 290 && mouseX < 510 && mouseY > 395 && mouseY < 425) {
    sliderX = mouseX;
  }
}


void mouseDragged () {
  controlSlider();

  //slider controlling indicator 
  if (sliderX > 290 && sliderX < 510) {
    d = map(sliderX, 290, 510, 100, 200);
  }
}


void mousePressed() {
  controlSlider();
}
