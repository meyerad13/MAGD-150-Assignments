void setup(){
  size(800,800);
}
void draw(){
  colorMode(RGB, 100);
  background(#A9DAE8);
  
  //basket
  strokeWeight(2);
  stroke(0);
  line(350,650,340,550);
  line(450,650,460,550);
  line(400,650,400,550);  
  fill(#733D00);
  strokeWeight(2);
  quad(350,770,350,650,450,650,450,770);
  strokeWeight(3);
  
  //crossStrokes
  line(370,770,350,750);
  line(390,770,350,730);
  line(410,770,350,710);
  line(430,770,350,690);
  line(450,770,350,670);
  line(450,750,350,650);
  line(450,730,370,650);
  line(450,710,390,650);
  line(450,690,410,650);
  line(450,670,430,650);
  
  line(350,670,370,650);
  line(350,690,390,650);
  line(350,710,410,650);
  line(350,730,430,650);
  line(350,750,450,650);
  line(350,770,450,670);
  line(370,770,450,690);
  line(390,770,450,710);
  line(410,770,450,730);
  line(430,770,450,750);
  
  stroke(#A36800);
  strokeWeight(3);
  noFill();
  bezier(350,650,366.67,680,383.23,680,400,650);
  bezier(400,650,416.67,680,433.34,680,450,650);
  fill(#0055B2);
  stroke(0);
  strokeWeight(1);
  arc(350,661,20,20,0,TWO_PI);
  arc(400,661,20,20,0,TWO_PI);
  arc(450,661,20,20,0,TWO_PI);
    
  //sun
  stroke(#E0D834);
  strokeWeight(6);
  colorMode(HSB,100);
  fill(15,100,99);
  arc(770,30,100,100,0,TWO_PI);
  
 
  //ballooon
  colorMode(RGB,100);
  stroke(0);
  strokeWeight(1);
  fill(255,0,0);
  bezier(350,575,-350,-100,1150,-100,450,575);
  stroke(0);
  strokeWeight(1);
  fill(0,255,69);
  bezier(360,575,200,400,50,150,400,70);
  fill(255,0,0);
  bezier(370,575,240,400,120,150,400,70);
  fill(0,255,69);
  bezier(380,575,280,400,190,150,400,70);
  fill(255,0,0);
  bezier(390,575,320,400,260,150,400,70);
  fill(0,255,69);
  bezier(400,575,360,400,330,150,400,70);
  fill(0,255,69);
  bezier(440,575,600,400,750,150,400,70);
  fill(255,0,0);
  bezier(430,575,560,400,680,150,400,70);
  fill(0,255,69);
  bezier(420,575,520,400,610,150,400,70);
  fill(255,0,0);
  bezier(410,575,480,400,540,150,400,70);
  fill(0,255,69);
  bezier(400,575,440,400,470,150,400,70);
  fill(#FF0005);
  beginShape(QUAD_STRIP);
  vertex(324,550);
  vertex(350,575);
  vertex(350,550);
  vertex(350,575);
  vertex(375,550);
  vertex(375,575);
  vertex(400,550);
  vertex(400,575);
  vertex(425,550);
  vertex(425,575);
  vertex(450,550);
  vertex(450,575);
  vertex(476,550);
  vertex(450,575);
  endShape();
  
}