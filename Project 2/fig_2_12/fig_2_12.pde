void setup()
{
 size(1100,850);
 background(25,220,252);
}
 void draw()
{
  fill(255);
  noStroke();
  rect(0,700,1100,150); 

  
  ellipse(550,600,225,225); 
  ellipse(550,425,175,175);
  ellipse(550,300,100,100);

 //Accessorize your snowman here!
 
 fill(0);  
ellipse(530,280,10,10);  //eyes 
ellipse(550,280,10,10);
 
ellipse(550,400,10,10);  //buttons
ellipse(550,450,10,10);
ellipse(550,500,10,10);

fill(255,150,0);  
triangle(525,300,530,310,485,310);  //carrot nose

 
 noLoop();

}

