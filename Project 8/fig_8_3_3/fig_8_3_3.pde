PImage maze;

int x = 162;
int y = 162;

void setup()
{
  maze = loadImage("maze.png");  
  size(324, 324);
}void keyPressed()
{
  if ((key == CODED) && (keyCode == UP))
  {
    y--;
  } 
  if ((key == CODED) && (keyCode == DOWN))
  {
    y++;
  } 
  if ((key == CODED) && (keyCode == RIGHT))
  {
    x++;
  } 
  if ((key == CODED) && (keyCode == LEFT))
  {
    x--;
  }
}

void draw()
{
  background(255);
  image(maze,0,0);
  fill(255, 0, 0);
  noStroke();
  ellipse(x, y, 10, 10);
}

