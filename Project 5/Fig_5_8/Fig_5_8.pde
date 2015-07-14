void setup()
{
  size(250, 250);
}

void draw()
{
if(mouseX == pmouseX || mouseY == pmouseY)
{
  pushMatrix();              //create matrix
  translate(mouseX,mouseY);  //follow mouse
  rotate(second());        //rotate over time
  fill(255,0,0);              //fill red
  ellipse(0,0,25,25); 
  ellipse(0,25,25,25);
  ellipse(0,50,25,25);
  popMatrix();              //end matrix
}
fill(0,0,255); 
  ellipse(0,0,50,50); 
  ellipse(0,50,50,50);
  ellipse(0,100,50,50);


}

