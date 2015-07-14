int x1 = 400;
int x2 = 300;
int x3 = 200;
int grow1 = 1;
int grow2 = 1;
int grow3 = 1;
void setup()
{
  background(150); //Not redrawing the background after every loop
  size(800,800);
  smooth();
}

void draw()
{
  
  fill(255,255,255);
  stroke(255,0,0);
  ellipse(x1,200,x1,x2);
  stroke(0,255,0);
  ellipse(x1,x2,50,50);
  stroke(0,0,255);
  ellipse(x3,600,x1,50);

   x1 = x1+grow1; //assigning x 
   x2 = x2+grow2; //assigning x 
   x3 = x3+grow3; //assigning x 
     if(x1 >= width-25 || x1 <= 25)
  {
    grow1 = grow1*-1; 
  }
  if(x2 >= width-25 || x2 <= 25)
  {
    grow2 = grow2*-1; 
  }
  if(x3 >= width-25 || x3 <= 25)
  {
    grow3 = grow3*-1; 
  }

}






