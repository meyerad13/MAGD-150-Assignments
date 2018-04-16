int xspacing = 2; //how far apart should each horizontal location be spaced
int w; //width of entire wave

float theta = 0.0; //starts angle at 0
float amplitude = 50.0; //Height of wave
float period = 600.0; //how many pixels before wave repeats
float dx; //value for incrementing X, a function of period and xspacing
float[] yvalues; //using an array to store height values for the wave

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

void drawWave(){//draws waves
  noStroke();
  fill(255);
  //a simple way to draw the wave with an ellipse at each location
  
  for(int x=0; x<yvalues.length; x++){    // for loop determines placement of waves and fills
      stroke(#00CDCF);                   
      strokeWeight(30);
      line(x*xspacing,(180+yvalues[x]+30), x*xspacing,height);
      stroke(0);
         
  }
}