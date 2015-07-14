void setup()
{
 size(240,240); 
 background(150);

}

void draw()
{
    fill(second()*4,0,0); 
  rect(second()*4,160,50,50); 
  fill(0,minute()*4,0);
  rect(minute()*4,100,50,50); 
  fill(0,0,hour()*4);
  rect(hour()*4,40,50,50);
}

