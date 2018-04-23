//sets up array of rainbows
WeirdRainbow[] bows = new WeirdRainbow[200];

void setup() {
  size(1000,1000);
  smooth();
  //initializes rainbows into the bows array
  for (int i = 0; i < bows.length; i++) {
    bows[i] = new WeirdRainbow();
  }
}

void draw() {
  background(255);
  //draws all rainbows in array on to screen and updates locations
  for (int i = 0; i < bows.length; i++) {
    bows[i].update();
    bows[i].display(); 
  } 
}