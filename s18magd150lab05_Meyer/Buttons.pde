int rectX, rectY;
int circleX, circleY;
int buttonSquare = -1, buttonCircle = -1;
int rectSize = 150;
int circleSize = 180;
boolean rectOver = false;
boolean circleOver = false;
String normal = "Try me!";
String rectA = "Stop me.";
String circleA = "STTOOOPPP!";

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void mousePressed() {
  if (circleOver) {
    if(currentColor == mainBackground){
      currentColor = spaceBackground;
      buttonCircle *= -1;
      } else if (currentColor == spaceBackground){
      currentColor = mainBackground;
      buttonCircle *= -1;
    }
  }
  if (rectOver) {
    if(currentColor == mainBackground){
      currentColor = fishBackground;
      buttonSquare *= -1;
      } else if (currentColor == fishBackground){
      currentColor = mainBackground;
      buttonSquare *= -1;
     }
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}