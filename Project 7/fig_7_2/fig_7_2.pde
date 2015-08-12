String myOtherString = "Something cool";
String aString = "is going to happen, I promise!";
String myString = "";

void setup()
{
  size(250,250);
  myString = myOtherString + " " + aString;
  print(myString);
}

void draw()
{
  text(myString,125,125); 
}


