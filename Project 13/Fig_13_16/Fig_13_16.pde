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
   println(temp + "," + light + "," + sound);
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

