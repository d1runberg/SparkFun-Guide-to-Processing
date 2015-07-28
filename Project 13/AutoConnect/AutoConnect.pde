
import processing.serial.*;
Serial thisPort;  // Create object from Serial class

int x=0;
float val;      // Data received from the serial port
boolean connected;

void setup() 
{
  size(1000, 400);
  serialAutoConnect();
  //print(Serial.list());
  background(150);
  frameRate(120);
}

void draw()
{
  //all happens in the serial event
}


void serialEvent(Serial thisPort) 
{ 
  //Capture data coming from the serial port as a string 
  String inString = thisPort.readStringUntil('\n');
  
  //if the string is not null or "nothing"
  if (inString != null) 
  {
   //print out inString so we can see the numbers 
   println(inString);

   //change inString into a useable number by turning it into a float
   val = float(inString);
   
   //map the value of val to the height of the window
   val = map(val,0,1023,0,height); 
   
   //set color of graph to red
   stroke(255,0,0);
   
   //draw the line
   line(x,height,x,height-val); 
   
   //increment the x position of the graph
   x++;
   
   //if the x position is longer than the width of the window start over
    if(x>width)
      {
        x=0;
        background(150);
      }
  }
}




void serialAutoConnect()
{
  
  String[] list = Serial.list();
  //print(list.length);
  for(int i=0; i<=list.length; i++)
  {
    try 
    {
    String portName = Serial.list()[i];
    thisPort = new Serial(this, portName, 9600);
    } 
    catch (ArrayIndexOutOfBoundsException e) 
    {
     // e.printStackTrace();
      connected = false;
    }
  if (connected == false) 
    {
    // Stop reading because of an error or file is empty
    i++;  
    } 
  else 
  {
    String portName = Serial.list()[i];
    thisPort = new Serial(this, portName, 9600);
    thisPort.bufferUntil('\n');
    break;
  } 
}
}



