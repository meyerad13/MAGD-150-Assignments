import processing.video.*;
import processing.sound.*;
PImage frame1, frame2, frame3, frame4;
Capture picture;
SoundFile funkbanjo;

void setup(){
  size(1000,1000);
  background(0);
  frame1 = loadImage("PictureFrame.jpg");  //loads the frame into frame1
  frame2 = loadImage("PictureFrame.jpg");  // PictureFrame.jpg from: https://commons.wikimedia.org/wiki/File:Oil_painting_frame_Wellcome_L0067855.jpg
  frame2.filter(INVERT);                   //loads frame with INVERT filter into frame2
  frame3 = loadImage("PictureFrame.jpg");  //
  frame3.filter(THRESHOLD);                //loads frame with THRESHOLD filter into frame3
  frame4 = loadImage("PictureFrame.jpg");  //
  frame4.filter(ERODE);                    //loads frame with ERODE filter into frame 4
  picture = new Capture(this,640, 480);    //sets capture to variable picture
  picture.start();                         //starts capturing
  funkbanjo = new SoundFile(this, "funkBanjo.mp3"); //loads song to funkbanjo Music: http://www.bensound.com
  funkbanjo.play();  //sets funkbanjo to play on start
  funkbanjo.rate(.5);  //sets funkbanjo rate to half speed
  
  
}

void draw(){
  picture.read(); //reads webcam
  noTint();  
  image(frame1, 50,50, 250, 450); //puts in first frame
  tint(#A60400);
  image(picture, 95, 115, 160, 320); //sets webcam with filter inside first frame
  noTint();
  image(frame2, 450,50, 750, 450);  //puts in second frame
  tint(#31A60C);
  image(picture, 495, 115, 660, 320); //sets webcam with filter inside second frame
  noTint();
  image(frame3, 50,550, 250, 950);  //puts in third frame
  tint(#0511A6);
  image(picture, 95, 615, 160, 820); //sets webcam with filter inside third frame
  noTint();
  image(frame4, 450,550, 750, 950); //puts in fourth frame
  tint(#FFDC00);
  image(picture, 495, 615, 660, 820); //sets webcam with filter inside fourth frame
}
