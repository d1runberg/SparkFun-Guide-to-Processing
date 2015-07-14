PFont myFont;
String myString = ""; 

void setup()
{
  size(600,600);    
  
  myFont = loadFont("gauge.vlw");
}

void draw()
{
  textFont(myFont);  


 background(255);   
  textFont(myFont);  
  if(keyPressed)                     
  {
    myString = myString + key;        
  }
  fill(0);                           
  text(myString,10,10,width,height); 
}

