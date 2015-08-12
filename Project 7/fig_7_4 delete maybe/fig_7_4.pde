void draw()
{
  background(255);   
  textFont(myFont);  
  if(keyPressed)                     
  {
    myString = myString + key;        
  }
  fill(0);                           
  text(myString,10,10,width,height); 
}

