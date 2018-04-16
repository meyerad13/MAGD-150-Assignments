
color mainBackground, spaceBackground, fishBackground;       //three main background colors
color rectColor, circleColor, rectHighlight, circleHighlight;  //4 main circle colors
color rectText, circText; // 2 main text colors
color currentColor;  // var to store current color in order to switch

void setup(){
  surface.setTitle("Buttons to HUH?");
  size(800,800);
  
  w = width +20;  //////////////////////////
  dx = (TWO_PI / period) * xspacing;//////// values for waves
  yvalues = new float[w/xspacing];//////////
  
  mainBackground = color(75);/////////
  rectColor = color(#3B5459);/////////
  circleColor = color(#020302);///////
  rectHighlight = color(255);/////////  setting values to main colors
  circleHighlight = color(100);///////
  spaceBackground = color(#020302);///
  fishBackground = color(#0BB0D1);////
  currentColor = mainBackground;//////
  
  circleX = width/2;//////
  circleY = height/2;/////  giving values to button positions
  rectX = width/2 - 75;///
  rectY = 100;////////////
  
  ellipseMode(CENTER);//////////////////
  for(int i=0; i<hyper.length; i++){  // initializes stars
     hyper[i] = new Stars();////////////
  }
  
}

void draw(){
  update(mouseX, mouseY);
  background(currentColor);
  if(buttonSquare == -1 && buttonCircle == -1) // -1 is the default screen
  {
    if (rectOver) {
      fill(rectHighlight);
    } else {
      fill(rectColor);
    }
    stroke(255);
    strokeWeight(1);
    rect(rectX, rectY, rectSize, rectSize); //draws rectangle button
    fill(#0BB0D1);
    textSize(36);
    text(normal, width/2-70, 150, width/2+70, 200); //text in rectangle button
    
    if (circleOver) {
      fill(circleHighlight);
    } else {
      fill(circleColor);
    }
    stroke(100);
    ellipse(circleX, circleY, circleSize, circleSize); // draws circle button
    fill(255);
    textSize(36);//text in circle
    text(normal, width/2-70, height/2-15, width/2+50, height/2+50);
  }
  else if(buttonCircle == 1){ //screen when circle is clicked
    if (circleOver) {
      fill(#A60B00);
    } else {
      fill(100);
    }
  
       
    stroke(255);
    beginShape(); //front-center
    vertex(380,290);
    vertex(420,290);
    vertex(420,350);
    vertex(380,350);
    vertex(380,290);
    endShape();
    beginShape(); //front-left
    vertex(330,345);
    vertex(350,230);
    vertex(380,230);
    vertex(380,330);
    vertex(330,345);
    endShape();
    beginShape(); //front-right
    vertex(470,345);
    vertex(450,230);
    vertex(420,230);
    vertex(420,330);
    vertex(470,345);
    endShape();
    ellipse(circleX, circleY, circleSize, circleSize);
    beginShape(); //station 2
    vertex(420,360);
    vertex(480,350);
    vertex(480,320);
    vertex(490,300);
    vertex(510,300);
    vertex(520,320);
    vertex(520,380);
    vertex(430,400);
    endShape();
       
    fill(255); //text in circle
    textSize(24);
    text(circleA, width/2-70, height/2-15, width/2+50, height/2+50);
    
    translate(width/2,height/2); //displaces objects from middle of the screen
  for(int i=0; i< hyper.length; i++){ // shows illision of hyperdrive through space
    hyper[i].update();
    hyper[i].draw();
  }
  }
  else if(buttonSquare == 1){ //if sqaure is clicked
    if (rectOver) {
      fill(0);
    } else {
      fill(rectColor);
    }
    strokeWeight(2);  ///draws boat
    fill(220);
    beginShape(); //left triangle
    vertex(325,250);
    vertex(175,80);
    vertex(398,140);
    vertex(325,250);
    endShape();
    beginShape(); //bottom triangle
    vertex(327,250);
    vertex(399,142);
    vertex(473,250);
    vertex(327,250);
    endShape();
    beginShape(); //right triangle
    vertex(475,250);
    vertex(625,80);
    vertex(402,140);
    vertex(475,250);
    endShape();
    beginShape(); //top-left triangle
    vertex(398,138);
    vertex(398,10);
    vertex(300,112);
    vertex(398,138);
    endShape();
    beginShape(); //top-right triangle
    vertex(402,138);
    vertex(402,10);
    vertex(496,113);
    vertex(402,138);
    endShape();
    
    calcWave();   //draws waves
    drawWave();
    
    
    noFill();  //button and text
    stroke(1);
    strokeWeight(1);
    rect(rectX, rectY, rectSize, rectSize);  
    stroke(255);
    fill(0);
    textSize(32); //text in rectangle
    text(rectA, width/2-70, 150, width/2+70, 200);
  }
}