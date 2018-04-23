import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;


PImage cat;
PShape ball, box;
PeasyCam cam;

void setup(){
  size(900,900,P3D);
  cat = loadImage("cat.jpg");  //setting texture into cat
  ball = createShape(SPHERE, 300); //setting sphere to ball
  ball.setTexture(cat); //set's the cat texture to the ball shape
  box = createShape(BOX, 25); //sets a box to box
  box.setTexture(cat); //sets the cat texture to the box shape
  
  //PeasyCam is an imported camera setting I found while watching some videos
  //on The Coding Train's YouTube page. It seems to be a great camera setting
  //for user camera movement. Movements are:
  //left-click drag: rotates camera view
  //right-click drag: up and down will zoom in and out
  //scroll-click drag: pan's the camera side to side and up and down
  //scrolling also zooms in and out
  cam = new PeasyCam(this, 900);
}

void draw(){
  background(20);
  ambientLight(163,255,173); //sets a greenish light on the entire sketch
  pointLight(225,223,0,-400,200,0); //yellow light on sphere cat's face
  pointLight(225,223,0,-400,200,-200); //yellow light on sphere cat's face
  pointLight(225,223,0,-400,400,0);  //yellow light on sphere cat's face
  shape(ball, 200, 200); //draws ball PShape to sketch
  shape(box,200,540); //draws box PShape to sketch
  //draws a red box to sketch and translates to under PShape sphere
  pushMatrix();
  fill(255,0,0);
  translate(200,510);
  box(40);
  popMatrix();
}