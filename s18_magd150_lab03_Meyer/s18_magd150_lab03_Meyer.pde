//setting variables for bubbles
float a=0.50;
float b=100.55;
float c=200.353;
float d=300.225;
float e=400.999;

void setup(){
  surface.setResizable(true);
  surface.setTitle("Bubbles Floating Up");
  
  size(600,600);
  ellipseMode(RADIUS);
  

}
void draw(){
  background(#7068E5); //background
  strokeWeight(1);
  if(a<min(0,height)) //if first bubble gets to top, reset at bottom
  a=max(0,height);
  a =(a-1)%height;
  fill(a%256,255,255); //fill with blue color range
  ellipse(lerp(0,width,.1),a,20,20);  //draw first bubble at 1/10 screen width with given height a
  
  if(b<min(0,height))  // if second bubble gets to top, reset to bottom
  b = max(0,height);
  b = (b-1)%height;
  fill(b%256,255,255);  //fill with blue color range
  ellipse(lerp(0,width,.3),b,20,20); //draw second bubble at 3/10 screen width with given height b
  
  if(c<min(0,height))  //if thrid bubble gets to top, reset at bottom
  c=max(0,height);
  c = (c-1)%height;
  fill(c%256,255,255);  //fill with blue color range
  ellipse(lerp(0,width,.5),c,20,20); //draw third bubble at 1/2 screen width with given height c
  
  if(d<min(0,height)) //if fourth bubble gets to top, reset at bottomm
  d=max(0,height);
  d = (d-1)%height;
  fill(d%256,255,255);  //fill with blue color range
  ellipse(lerp(0,width,.7),d,20,20); //draw fourth bubble at 7/10 screen width with given height d
  
  if(e<min(0,height)) //if fifth bubble gets to top, reset at bottom
  e=max(0,height);
  e = (e-1)%height;
  fill(e%256,255,255);  //fill with blue color range
  ellipse(lerp(0,width,.9),e,20,20); //draw fifth bubble at 9/10 screen width with given height e
  
  println("Bubble A depth is: " + a); //print first bubble depth to console
  
  fill(200);  //draws fish shape on screen based on mouse placement
  beginShape();
  vertex(mouseX,mouseY);
  vertex(mouseX,mouseY+80);
  vertex(mouseX-120,mouseY);
  vertex(mouseX-140,mouseY);
  vertex(mouseX-160,mouseY+20);
  vertex(mouseX-160,mouseY+40);
  vertex(mouseX-130,mouseY+60);
  vertex(mouseX-152,mouseY+64);
  vertex(mouseX-132,mouseY+80);
  vertex(mouseX-108,mouseY+80);
  vertex(mouseX,mouseY);
  endShape();
  fill(0);  //draws fish eye based on mouse placement
  strokeWeight(8);
  point(mouseX-145,mouseY+20);
 
 println("Mouse x = : " + mouseX); //prints mouse X to console
 println("Mouse y = : " + mouseY); //prints mouse Y to console
  
  
  

}