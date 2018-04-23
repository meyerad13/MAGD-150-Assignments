Text txt = new Text(20, 20, 20, "Food");  //Initialize class

void setup(){ 
  surface.setResizable(true);
  surface.setTitle("Foods ScreenSaver");
  size(600,600);
  background(10);
  fill(10,100,200);
  frameRate(4);
  pixelDensity(displayDensity());
}

void draw(){
  fill(0,0,10,100);  // makes words fade
  rect(0,0,width,height);
  txt.randLocate(); //calls randLocate function
  txt.randFontSize(); //calls randFontSize function
  txt.randWord(); // calls randWord function
  txt.randColor(); // calls randColor function
  for(int i=0; i<10; i++){  //for loop gives a 3d effect on letters
    txt.display();  //calls display function
    txt.threeDee();  //calls threeDee function
  }
}