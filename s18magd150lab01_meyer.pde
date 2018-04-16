size(400, 300);
background(150);


//ground
fill(0);
rectMode(CORNERS);
rect(0,200,400,300);

//beam
//groundcircle
stroke(255);
fill(255);
ellipse(201,200,93,50);
//beam in sky
strokeWeight(10);
line(277,55,156,200);
line(277,55,166,200);
line(277,55,176,200);
line(277,55,186,200);
line(277,55,196,200);
line(277,55,206,200);
line(277,55,216,200);
line(277,55,226,200);
line(277,55,236,200);
line(275,55,244,200);
//beam outline
stroke(0);
strokeWeight(1);
fill(0);
line(270,55,150,200);
line(280,55,250,200);
//spaceship
fill(210);
strokeWeight(2);
ellipse(275,50,40,40);
fill(0);
noStroke();
ellipse(275,50,80,20);
//lights
ellipseMode(CENTER);
stroke(255);
strokeWeight(5);
point(240,50);
point(254,50);
point(268,50);
point(282,50);
point(296,50);
point(310,50);

//cow
//cow body
fill(0);
noStroke();
rectMode(CENTER);
rect(230,150,30,15,25,5,5,3);
fill(255);
//cow spots
ellipse(225,157,8,5);
ellipse(225,142,8,5);
ellipse(240,145,8,8);
ellipse(245,157,8,5);
ellipse(230,150,8,5);
ellipse(220,150,5,8);
//cow body outline
fill(0);
noFill();
stroke(0);
strokeWeight(1);
rect(230,150,30,15,25,5,5,3);
fill(0);
//cow head
ellipse(218,157,10,10);
ellipseMode(CORNERS);
ellipse(210,155,220,160);
line(218,163,219,165);
line(220,163,219,165);
//eye
stroke(255);
strokeWeight(2);
point(218,160);
stroke(0);
//tail
strokeWeight(1);
line(243,157,243,165);
//legs
strokeWeight(2);
line(243,141,245,136);
line(238,141,240,136);
line(218,141,216,136);
line(218,141,220,136);
