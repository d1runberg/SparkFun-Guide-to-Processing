void setup()
{
 size(250,250);
 background(150); 
 smooth();
}

void draw()
{
  background(150);
  String myString = "I love strings, even when they are in knots.";
  textAlign(CENTER);
  textSize(20);
  fill(0,0,0);
  text(myString,10,height/4,180,200);
}

