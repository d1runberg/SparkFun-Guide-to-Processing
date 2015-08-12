import processing.serial.*;

Serial myPort;  // Create object from Serial class

int r = 0;        // Data received from the serial port
int g = 0;
int b = 0;

void setup() 
{
  size(200, 200);
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);
}

void draw() 
{
   background(r,b,g);
  String outString = str(r) + ',' + str(g) + ',' + str(b) + '\n'; 
  myPort.write(outString);
  println(outString);
}

void keyPressed()
{
  if(key == 'r')
  {
    r++;
    key = ' ';
   
    if(r > 255)
    {
      r = 0; 
    }
  } 
  else if((key == 'g') && (g <= 255))
  {
    g++;
    key = ' ';
   
    if(g > 255)
    {
      g = 0; 
    }
  }
  else if((key == 'b') && (b <= 255))
  {
    b++;
    key = ' '; 
  
    if(b > 255)
    {
      b = 0; 
    }
  }
}

