//credit to The Coding Train YouTube page which I've been watching to help with this class.
//This was one of the coding challenges that was really fun to watch and participate with. 

Stars[] hyper = new Stars[1000];

class Stars{
  float a, b, c;
  float c2;
  Stars(){
    a = random(-width, width);  //assigning random width location
    b = random(-height, height); //assigning random height location
    c = random(width); //assigning random depth
    c2 = c; //assigning value for trails
  }
  
  void update(){ // updates location of stars on screen
    c = c-8;
    if(c<1){
       a = random(-width, width);
       b = random(-height, height);
       c = width;
       c2 = c;
    }
  }
  
  void draw(){ // displays stars on screen with a line as a trial.
    fill(255);
    noStroke();
    float a2 = map(a/c, 0, 1, 0, width);
    float b2 = map(b/c, 0, 1, 0, height);
    float r = map(c, 0, width, 16, 0);
    
    ellipse(a2,b2,r,r);
    
    float a3 = map(a/c2, 0, 1, 0, width); 
    float b3 = map(b/c2, 0, 1, 0, height);
    
    stroke(255);
    strokeWeight(5);
    line(a3,b3,a2,b2);
    strokeWeight(1);
    
    a2 = a;
    b2 = b;
  }
}