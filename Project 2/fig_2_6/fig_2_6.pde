void setup()
{
  size(250,250);
  background(150);
}

void draw()
{
  stroke(255,0,0);
  strokeWeight(10);

  strokeCap(ROUND);
  line(25,25,175,25);
  
  stroke(0,255,0);
  strokeWeight(10);
  strokeCap(SQUARE);
  line(25,75,175,75);
  
  stroke(0,0,255);
  strokeWeight(10);
  strokeCap(PROJECT);
  line(25,125,175,125);
}

