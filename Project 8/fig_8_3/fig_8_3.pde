void setup()
{
  size(600,800);
  background(255);
}

void draw()
{
  //No code needed here!
}

void mouseDragged()
{
if(mouseButton == LEFT)
  {
  strokeWeight(50);
  stroke(random(255),random(255),random(255));
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed()
{
  if(mouseButton == RIGHT)
  {
    background(255);
  }
}



