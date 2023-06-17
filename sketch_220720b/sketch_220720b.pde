import processing.sound.*;
SoundFile file;
AudioSample sample;

float frame = 0, speed = 1 / .0125, range = .125;
float rx = PI / 6, ry = -PI / 6, rmax = PI / 240;
float spin = 0.0;

PGraphics cubeA;
PGraphics cubeB;

PImage gambar;

void setup () {
size (500,600, P3D);
  cubeA = createGraphics(width, height, P3D);
  cubeB = createGraphics(width, height, P3D);
  blendMode(DODGE);
  gambar = loadImage("planet.jpg");
  file = new SoundFile(this, "sample.mp3");
  file.playFor(230, 0);
  sample = new AudioSample(this, 88200, 22050);
   println("230" + sample.duration() + "230");
}

float random;
int nos;

void create_nos(float xloc,float yloc,float width, float height){
  for(int i = 0 ; i<2;i++){
    rect(xloc, yloc, width, height);
    xloc=xloc+56;
  }
}

void nos2(float xloc,float yloc,float width, float height){
    for(int i = 0 ; i<2;i++){
    rect(xloc, yloc, width, height);
    xloc=xloc+20;
  }
}

void sec_color(){
  fill(0,255,12);
}

void mousePressed(){
  random = random(0,255);
  System.out.println(random);
}

void draw () {
  if (!mousePressed) {
    speed = constrain (dist (128, 128, mouseX, mouseY) / 128, 0, 1) * .02;
    range = pow (constrain (dist (128, 128, mouseX, mouseY) / 128, 0, 1), 2) * .65;
    } else {
    rx = rx + (mouseX - pmouseX) * PI / width;
    ry = constrain (ry - (mouseY - pmouseY) * PI / height, -HALF_PI, HALF_PI);
    }
    smooth();
    background (#989486);
    translate (128, 128, -192); rotateX (ry); rotateY (rx);
    noFill (); stroke (0, 0, 0, 20); box (256, 256, 256);
    sphere (50);

  if (frameCount % 5 == 0) {
    pushMatrix();
    translate(42, 100);
    fill(255, 128, 0);
    create_nos(nos,frameCount,10,3);
    popMatrix();
  }
  
  if (frameCount % 2 == 0) {
    pushMatrix();
    translate(60, 115);
    fill(255, 128, 0);
    nos2(nos,frameCount,10,3);
    popMatrix();
  }
  
  // object patokan terbang
  if (frameCount % 2 == 0) {
    pushMatrix();
    translate(150, 15);
    fill( 0);
    nos2(nos,frameCount,10,3);
    popMatrix();
  }
  
   if (frameCount % 2 == 0) {
    pushMatrix();
    translate(150, 0);
    fill(244);
    nos2(nos,frameCount,10,3);
    popMatrix();
  }
  
  if (mousePressed){
  scale(1.5);
} else {
  scale(0.3);
}
{
  drawCube(cubeA, 50, 100);
  drawCube(cubeB, 100, 200); 
  image(cubeA, 0, 0);
  image(cubeB, 0, 0);
}

//ROBOT//
//antena
line(200, 40, 180, 120); // kiri
line(200, 40, 255, 120); // kanan

//pusat antena
line(170, 120, 170, 110);
line(175, 122, 175, 107);
line(180, 124, 180, 107);
line(185, 124, 185, 106);
line(190, 124, 190, 106);
line(195, 123, 195, 107);
line(200, 120, 200, 110);

//wajah
fill(#524A4E);
rect (150, 118, 80, 80); // kuping kiri
rect (231, 118, 80, 80); // kuping kanan
fill(#D4ECDD);
ellipse(230, 180, 170, 110);

//mata1
fill(151);
ellipse(205, 160, 30, 30);
fill(0);
ellipse(210, 160, 15, 15);

//mata2
fill(151);
ellipse(260, 160, 30, 30);
fill(0);
ellipse(255, 160, 15, 15);

//mulut
fill(#FFFCFD);
ellipse(235, 200, 50, 15);

//Leher
fill(#C69B7B);
rect(207,235,50,111);

//Tangan Kiri
stroke(0,0,50);
fill(#D4ECDD);
rect(81,300,25,100);
fill(#D4ECDD);
ellipse(125,295,45,45);
ellipse(95,295,35,35);

//Capit Kiri
stroke(0,0,50);
ellipse(94,395,35,35);
fill(#3A3845);
rect(87,403,4,8);
rect(90,403,4,8);
rect(93,403,4,8);
rect(96,403,4,8);

//Tangan Kanan
stroke(0,0,50);
fill(#D4ECDD);
rect(343,300,25,100);
fill(#D4ECDD);
ellipse(325,295,45,45);
ellipse(355,295,35,35);

//Capit Kanan
stroke(0,0,50);
ellipse(357,395,35,35);
fill(#3A3845);
rect(350,403,4,8);
rect(353,403,4,8);
rect(356,403,4,8);
rect(359,403,4,8);

//Badan
stroke(0,0,50);
fill(#4C0027);
rect(135,265,180,150);

//Kotak Badan
noStroke();
fill(0,153,51);
strokeJoin(BEVEL);
rect(182, 288,87, 80);
fill(255);
ellipse(225,330,50,50);

//Bulet Kiri
fill(#3A3845);
ellipse(157,385,30,30);

//Bulet Kanan
fill(#3A3845);
ellipse(293,385,30,30);

//Kotak Tengah Atas
noStroke();
fill(#F7CCAC);
rect(180,375,90,10);

//Kotak Tengah Bawah
noStroke();
fill(#826F66);
rect(180,395,90,10);

//Kaki Kiri
stroke(0,0,50);
fill(#C69B7B);
rect(155,415,30,10);
rect(158,425,25,9);
rect(160,434,20,8);
fill(#B7CADB);
rect(150,440,40,70);
fill(0,153,51);
ellipse(170,470,30,30);

//Sepatu
stroke(0,0,50);
fill(#3A3845);
rect(157,510,25,35);

//Kaki Kanan
stroke(0,0,50);
fill(#C69B7B);
rect(260,415,30,10);
rect(262,425,25,9);
rect(264,434,20,8);
fill(#B7CADB);
rect(255,440,40,70);
fill(0,153,51);
ellipse(275,470,30,30);

//Sepatu
stroke(0,0,50);
fill(#3A3845);
rect(263,510,25,35);

//PELIHARAAN//
//tanduk
line(60, 40, 65, 45); // left
line(90, 40, 85, 45); // right

//Head
fill(0,153,51); // Set Color of head
arc(75, 67, 20, 20, PI, TWO_PI); // head

// EYE
fill(255,255,0); // Set Color of eye
ellipse(65, 60, 2, 2);//left eye
fill(255,255,0); // Set Color of eye
ellipse(85, 60, 2, 2);// right eye

// Body
fill(0,153,51); // Set Color of body
rect(55, 70, 40, 45); // body
rect(42, 75, 10, 30); //left hand
rect(98, 75, 10, 30);// right hand
rect(60, 105, 10, 30);// left foot
rect(80, 105, 10, 30); // rigth foot
}

float cycle (float modifier, float displacement) {
return cos ((frame * modifier + displacement) * TWO_PI) / 2; }
class bone {
// constants
int maxchildren = 4;
// variables
float x, y, z, a, b ,c;
int len; bone[] children;

}

void drawCube(PGraphics cube, float xd, float yd) {
  cube.beginDraw();
  cube.lights();
  cube.clear();
  cube.noStroke();
  cube.translate(cube.width/2, cube.height/2);
  cube.rotateX(frameCount/xd);
  cube.rotateY(frameCount/yd);
  cube.box(300);
  cube.endDraw();
}
