PImage jeff;
PImage amanda;
PImage lindsay;
PImage ben;
PImage brian;
PImage angela;

void setup()
{
 size(1000,800); 
  
  jeff = loadImage("jeff.png"); 
 amanda = loadImage("amanda.png");
 lindsay = loadImage("lindsay.png");
 ben = loadImage("ben.png");
 brian = loadImage("brian.png");
 angela = loadImage("angela.png");   
}

void draw()
{
  image(jeff,20,20); 
 image(amanda,600,400);
 image(ben,20,400);
 image(brian,600,20);
 image(lindsay,300,20);
 image(angela, 300,400);}

