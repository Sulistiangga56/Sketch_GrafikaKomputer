size(500, 300);
int x = 250;
float y = 150;

//kepala
fill(10, 199, 255);
ellipse(x-26, 184, x-26, 220);
fill(255);
ellipse(224, 215, 170, 150);

//mata kiri
fill(255);
ellipse (190, 150, 55, 68);
fill(0);
ellipse (195, 155, 27, 27);

//mata kanan
fill(255);
ellipse (260, 150, 55, 68);
fill(0);
ellipse (255, 155, 27, 27);

//garis hidung
strokeWeight(1.5);
line(225, 180, 225, 258);

//hidung
fill(252, 12, 0);
ellipse (225, 180, 22, 22);

//senyum
noFill();
arc(225,200,160,120, radians(50) , radians(130));

//kumis Kiri
line (190, 208, 145, 200);
line (190, 215, 145, 215);
line (190, 223, 145, 230);

//Kumis Kanan
line (260, 208, 300, 200);
line (260, 215, 300, 215);
line (260, 223, 300, 230);

//kalung
fill(252, 12, 0);
rect(150, 275, 150, 25);

//lonceng
fill(255, 255, 1);
arc(225, 300, 30, 30, PI, TWO_PI);
