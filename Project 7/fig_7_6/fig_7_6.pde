PFont font;
String myString = "";
String location = "";
String dispTime = "";

void setup()
{
 size(800,800);
 font = loadFont("montserrat.vlw");
}

void draw()
{
  background(150,150,0);
  fill(0);
  

  if(mouseX <= width/2 && mouseY <= height/2)
  {
    myString = "UPPER LEFT";
    fill(255);
  }
  if(mouseX >= width/2 && mouseY <= height/2)
  {
    myString = "UPPER RIGHT";
    fill(0,0,255);
  }
  if(mouseX <= width/2 && mouseY >= height/2)
  {
    myString = "LOWER LEFT";
    fill(0,255,0);
  }
  if(mouseX >= width/2 && mouseY >= height/2)
  {
    noStroke();
 
  myString = "LOWER RIGHT";
    fill(255,0,0);
  }
    ellipse(mouseX,mouseY,200,200);
    fill(0);
  textFont(font);
  textAlign(CENTER);
  textSize(25);
  text(myString,mouseX,mouseY);


}

