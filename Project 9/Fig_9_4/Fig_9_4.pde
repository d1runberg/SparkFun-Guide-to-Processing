int x = 300;
int y = 300;

void setup()
{
  size(600,600);
}

void draw()
{
  background(255 );
  fill(255,0,0);
  noStroke();
  ellipse(x,y,100,100);
}
void keyPressed()
{
  if((key == CODED) && (keyCode == UP))
  {
    y--;
  } 
  
  if((key == CODED) && (keyCode == DOWN))
  {
    y++;
  } 
  
  if((key == CODED) && (keyCode == RIGHT))
  {
    x++;
  } 
  
  if((key == CODED) && (keyCode == LEFT))
  {
    x--;
  } 
}



