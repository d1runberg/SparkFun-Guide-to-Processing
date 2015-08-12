PImage img;

void setup()
{
  size(400,400);
  img = loadImage("jeff.jpg");
  imageMode(CENTER);
  image(img,width/2,height/2);
}
