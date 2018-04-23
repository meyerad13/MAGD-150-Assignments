/*
The base of the Sine Wave I found on processing's website. I used it to get the basic wave
idea and added to it by drawing pizza's instead. I left the original notes from processing's website
to show the meanings of variables that were taken from there. Some of the variables initial values
were changed to fit my needs more. I also added some of my own notes to show I understand the code
behind the Sine Wave.
*/


int xspacing = 20; //how far apart should each horizontal location be spaced
int w; //width of entire wave

float theta = 0.0; //starts angle at 0
float amplitude = 50.0; //Height of wave
float period = 600.0; //how many pixels before wave repeats
float dx; //value for incrementing X, a function of period and xspacing
float[] yvalues; //using an array to store height values for the wave

void setup(){
  size(600,600);
  surface.setTitle("Pizza Surfing at Night");
  ellipseMode(CENTER);
  w = width +20;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new float[w/xspacing];
  textAlign(CENTER, CENTER);
}
void draw(){
  background(#001736);
  calcWave();// 
  drawPizza();
  fill(#FFFBA9);
  ellipse(550,70,100,100);
  
  if(keyPressed){     //if key is pressed the word "PIZZA!" appears on the screen
    fill(#FF0100);
    textSize(100);
    text("PIZZA!", width/2.0, 100);
    
  }
      if(mousePressed){   //if loop for mouse buttons
        if(mouseButton == LEFT){  //if left mouse button pressed, fills moon with a smiley face
         fill(0);
         rect(520,50,20,15,7);
         rect(560,50,20,15,7);
         strokeWeight(2);
         stroke(0);
         line(510,40,522,52);
         line(590,40,578,52);
         line(540,57,560,57);
         noFill();
         arc(550, 100, 30, 10, 0, PI+QUARTER_PI, OPEN);
         
        }
        
        if(mouseButton == RIGHT){   //if right mouse button pressed, fills moon with angry face
         fill(0);
         rect(520,50,20,15,7);
         rect(560,50,20,15,7);
         strokeWeight(2);
         stroke(0);
         line(510,40,522,52);
         line(590,40,578,52);
         line(540,57,560,57);
         line(525,40,540,50);
         line(555,50,570,40);
         line(530,100,570,100);
        }
      }
}

void calcWave(){
  //Increment theta (try different values for 'angular velocity' here
  theta += 0.03;// will change the speed at which the waves pass
  
  //for every x value, calculate a y value with sine function
  float x = theta;
  for(int i=0; i<yvalues.length; i++){   //for loop gives a height value for every x value
     yvalues[i] = sin(x)*amplitude;      //to give the appearance of a wave
     x+=dx;
  }
}
void drawPizza(){//draws pizza's over waves
  noStroke();
  fill(255);
  //a simple way to draw the vave with an ellipse at each location
  
  for(int x=0; x<yvalues.length; x++){    // for loop determines placement of pizza and draws pizza in location
      stroke(#00CDCF);                    // it also fills the bottom to look like water
      strokeWeight(30);
      line(x*xspacing,(height/2+yvalues[x]+30), x*xspacing,height);
      stroke(0);
      strokeWeight(1);
      fill(#E00101);
      triangle(x*xspacing,height/2+yvalues[x],x*xspacing+20,height/2+yvalues[x]+10,x*xspacing,height/2+yvalues[x]+20);
      fill(#DEBE44);
      triangle(x*xspacing,height/2+yvalues[x]+1,x*xspacing+18,height/2+yvalues[x]+10,x*xspacing,height/2+yvalues[x]+19);
      fill(#DE8700);
      rect(x*xspacing,height/2+yvalues[x],4,20,7);
      fill(#D74C00);
      ellipse(x*xspacing+8,height/2+yvalues[x]+8,4,4);
      ellipse(x*xspacing+12,+height/2+yvalues[x]+12,4,4);   
      
  }
}