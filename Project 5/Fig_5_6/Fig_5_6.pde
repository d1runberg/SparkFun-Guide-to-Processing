void setup()
{
  size(250, 250);
}

void draw()
{
  pushMatrix();
 translate(mouseX,mouseY);
fill(255,0,0);
ellipse(0,0,25,25); 
ellipse(0,25,25,25);
ellipse(0,50,25,25);
popMatrix();

}

