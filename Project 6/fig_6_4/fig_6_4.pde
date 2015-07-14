PImage img;
void setup()
{
 size(800,600);
 img= loadImage("jeff.jpg"); 
 background(150); 
} 
void draw()
{
 
  size(800,600);
  imageMode(CENTER);
  image(img,mouseX, mouseY);
}  



