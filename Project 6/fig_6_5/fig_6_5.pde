PImage img;
void setup()
{
 img= loadImage("jeff.jpg"); 
 background(150); 
} 
void draw()
{
 
  size(400,400);
  imageMode(CENTER);
  pushMatrix();
  translate(width/2,height/2);  //center image in your sketch
  scale(map(mouseX,0,width,.5,2)); 
  image(img, 0,0);
  popMatrix();

}  



