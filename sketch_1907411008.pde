size(150, 170);

//antena
line(60, 40, 65, 45); // left
line(90, 40, 85, 45); // right

strokeWeight(2);
ellipseMode(RADIUS);

noStroke(); // Disable stroke

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
