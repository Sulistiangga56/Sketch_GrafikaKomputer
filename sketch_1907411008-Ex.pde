void setup() {
  size(200, 500);
  background(244);
  smooth();
  noStroke();
  ellipseMode(RADIUS);
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

void main_color(){
  fill(random,random,random);
}

void sec_color(){
  fill(0,255,12);
}

void head(float xloc,float yloc,float size){
  //head
  arc(75, 67, 20, 20, PI, TWO_PI);
  
  //eye
  for(int i = 0 ; i<2;i++){
    sec_color();
    ellipse(xloc, yloc, size, size);
    xloc=xloc+20;
  }
}

void body(float xloc,float yloc,float width, float height){
  //body
  rect(xloc, yloc, width, height);
}

void hand(float xloc,float yloc,float width, float height){
    for(int i = 0 ; i<2;i++){
    main_color();
    rect(xloc, yloc, width, height);
    xloc=xloc+56;
  }
  
}

void foot(float xloc,float yloc,float width, float height){
    for(int i = 0 ; i<2;i++){
    main_color();
    rect(xloc, yloc, width, height);
    xloc=xloc+20;
  }
}

void mousePressed(){
  random = random(0,255);
  System.out.println(random);
}

void draw(){
  
  main_color();
  head(65, 60, 2);
  foot(60,105,10,30);
  main_color();
  body(55,70,40,45);
  main_color();
  hand(42, 75,10,30);  
//fly
  if (frameCount % 5 == 0) {
    pushMatrix();
    translate(42, 100);
    fill(255, 128, 0);
    create_nos(nos,frameCount,10,3);
    popMatrix();
    
  }
  
  if (frameCount % 5 == 0) {
    pushMatrix();
    translate(60, 115);
    fill(255, 128, 0);
    nos2(nos,frameCount,10,3);
    popMatrix();
  }
  // object patokan terbang ceritanya
  if (frameCount % 5 == 0) {
    pushMatrix();
    translate(150, 5);
    fill( 0);
    nos2(nos,frameCount,10,3);
    popMatrix();
  }
  
   if (frameCount % 5 == 0) {
    pushMatrix();
    translate(150, 0);
    fill(244);
    nos2(nos,frameCount,10,3);
    popMatrix();
  }
  
  
}
