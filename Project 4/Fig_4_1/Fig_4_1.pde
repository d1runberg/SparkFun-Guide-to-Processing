void setup()
{
 size(250,250); 
 background(150);
}

void draw()
{
 pushMatrix();
 noStroke();
 translate(width/2,height/2);
 rotate(second());
 rectMode(CENTER);
 fill(second()*4,0,0);
 rect(0,0,100,100);
popMatrix(); 
}

