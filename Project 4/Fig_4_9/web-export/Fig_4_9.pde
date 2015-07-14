void setup()
{
 size(240,240); 
}

void draw()
{
  //background(150);
  rotate(millis());
  
  fill(second()*4,0,0);
  rect(20,160,second(),second()); 
  
  fill(0,0,minute()*4);
  triangle(100,100,80,40,minute(),minute()); 
  
  fill(0,hour()*10,0);
  ellipse(0,0,hour()*5,hour()*5); 
  
  if(second()>=59)
  {
    background(150);
  }
}


