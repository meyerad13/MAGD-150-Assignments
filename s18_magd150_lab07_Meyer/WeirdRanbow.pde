class WeirdRainbow{
  
  PVector position, velocity, acceleration;
  float theta, scaleX, scaleY, topspeed;

  
 WeirdRainbow(){
    /*
    position - sets position of rainbows from -half width/height to
    half width/height to fill after translate
    */
    position = new PVector(random((-width/2), width/2),random((-height/2), height/2)); 
    velocity = new PVector(0,0);
    topspeed = .2;
    theta = 0;
    scaleX=1;
    scaleY=1;
  }
  
  void update(){
    
    //updates the position of the rainbows
    PVector movement = new PVector(position.x +100, position.y + 100);
    PVector acceleration = PVector.sub(movement,position);
    acceleration.setMag(1);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
    
    
  }
  /*
  updates theta and scales to rotate and make rainbows grow in size.
  Also sets mid screen as axis and draws the rainbows.
  */
  void display(){
    theta += .02;
    scaleX += .001;
    scaleY += .001;
    pushStyle();
    pushMatrix();
    strokeWeight(2);
    noFill();
    translate(height/2, width/2);
    rotate(theta);
    scale(scaleX, scaleY);
    stroke(#FF0000);
    arc(position.x, position.y, random(20,50), random(20,50), 0, HALF_PI);
    stroke(#E8E10A);
    arc(position.x, position.y+4, random(20,50), random(20,50), 0, HALF_PI);
    stroke(#4AFF00);
    arc(position.x, position.y+8, random(20,50), random(20,50), 0, HALF_PI);
    stroke(#0329E8);
    arc(position.x, position.y+12, random(20,50), random(20,50), 0, HALF_PI);
    popMatrix();
    popStyle();
    
  }
}