PImage brian;

void setup()
{
  brian = loadImage("brian.png");
  brian.filter(THRESHOLD,.88);
  size(900,900);
}

void draw()
{
  tint(255,0,0);
  image(brian,0,0,300,300);
  tint(0,0,255);
  image(brian,300,0,300,300);
  tint(99,151,30);
  image(brian,600,0,300,300);
  tint(8,252,57);
  image(brian,0,300,300,300);
  tint(255,255,56);
  image(brian,300,300,300,300);
  tint(255,45,250);
  image(brian,600,300,300,300);
  tint(255,150,30);
  image(brian,0,600,300,300);
  tint(0,150,255);
  image(brian,300,600,300,300);
  tint(150,255,155);
  image(brian,600,600,300,300);
}


