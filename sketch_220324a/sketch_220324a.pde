void setup(){
  size(500, 250);
}

void draw(){
  if (mousePressed){
    fill(10);
  }else{
    fill(55, 52);
  }
ellipse(mouseX, mouseY, 100, 100); //ellipse(x, y, width, height)
rect(mouseX, mouseY, 120, 120);
}
