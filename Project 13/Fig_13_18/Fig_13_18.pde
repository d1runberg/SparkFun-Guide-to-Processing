import processing.serial.*;

Serial myPort;

float temp = 0;        
float light = 0;      
float sound = 0;       

void setup() 
{
  size(700, 400);

  println(Serial.list());
  myPort = new Serial(this, Serial.list()[2], 9600);

//Generate a new serial event at new  line:
  myPort.bufferUntil('\n');  
}

void draw() 
{
  println(light + "," + sound + "," + temp);  //Print serial data to terminal
  background(150);  //Standard grey background

  stroke(0);  //Base level line color
  line(0, 300, width, 300);  //Base level line

  noStroke();  //Remove outline

  fill(255, 0, 0);  //Temp rectangle
  rect(100, 300, 100, -temp);

  fill(0, 255, 0);    //Light rectangle
  rect(300, 300, 100, -light);

  fill(0, 0, 255);  //Sound rectangle
  rect(500, 300, 100, -sound);
    fill(0);    //black
  textAlign(CENTER);
  text("Light: "+light, 150, 325);
  text("Sound: "+sound, 350, 325);
  text("Temperature: "+temp, 550, 325);

}



void serialEvent(Serial myPort)
{
  String inString = myPort.readStringUntil('\n');

  if (inString != null) 
  {
    inString = trim(inString);
    float[] vals = float(split(inString, ","));

    if (vals.length >= 3) 
    {
      temp = map(vals[0], 0, 1023, 0, 200);
      light = map(vals[1], 0, 1023, 0, 200);
      sound = map(vals[2], 0, 1023, 0, 200);
    }
  }
}

