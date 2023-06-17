import processing.opengl.*;


void setup()
{
    size(1200, 650, OPENGL);
    
}

void draw()
{
    background(#270082);
    lights();
    noStroke();
    
    fill(#FA58B6);

    pushMatrix();    
    translate( 255, 335, 5 );
    rotateX( PI/2 );
    rotateY( radians( frameCount ) );
    rotateZ( radians( frameCount ) );
    drawCylinder( 90, 150, 300 );
    popMatrix();

    pushMatrix();   
    translate( 655, 335, 5);
    rotateX( PI/2 );
    rotateY( radians( frameCount ) );
    rotateZ( radians( frameCount ) );
    drawCylinder( 60, 100, 200 );
    popMatrix();
    
    pushMatrix();    
    translate( 825, 335, 5 );
    rotateX( PI/2 );
    rotateY( radians( frameCount ) );
    rotateZ( radians( frameCount ) );
    drawCylinder( 30, 50, 100 );
    popMatrix();


}

void drawCylinder( int sides, float r, float h)
{
    float angle = 360 / sides;
    float halfHeight = h / 2;

    // draw top of the tube
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, -halfHeight);
    }
    endShape(CLOSE);

    // draw bottom of the tube
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, halfHeight);
    }
    endShape(CLOSE);
    
    // draw sides
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides + 1; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, halfHeight);
        vertex( x, y, -halfHeight);    
    }
    endShape(CLOSE);

}
