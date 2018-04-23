import processing.pdf.*;
PFont broadway;
String[] text;
String motivationFile = "Motivation.txt";
int color1, color2, color3, count;
float x, y, zspot;
String align1, align2, align3;

void setup(){
  surface.setResizable(true);
  surface.setTitle("Fonts");
  size(600,600);
  background(20);
  broadway = createFont("Broadway", 50, true);
  text = loadStrings(motivationFile);
  count = text.length;
  printArray(text);
  textSize(50);
  frameRate(1);
  beginRecord(PDF, "Textfile.pdf");
}

void draw(){
  textAlign(CENTER, CENTER);
  background(20);
  for (int i = 0; i < count; ++i) {
    color1 = int(random(255));
    color2 = int(random(255));
    color3 = int(random(255));
    fill(color1, color2, color3);
    text(text[i], random(width), random(height), 0);
  }
  endRecord();
}