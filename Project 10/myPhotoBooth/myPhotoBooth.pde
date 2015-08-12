
import processing.video.*;

Capture cam;

void setup()
{
  String[] cameras = Capture.list();
  println("Available cameras:");
 
 for (int i = 0; i < cameras.length; i++) 
  {
    println(cameras[i]);
  }

  size(1280, 1024);
  cam = new Capture(this, cameras[30]);
  cam.start();
}


void draw() 
{
  if (cam.available() == true) 
  {
    cam.read();
  }

  image(cam, 0, 0, width, height);
  
  if(second()%10 == 0)
  {
    cam.stop();
    saveFrame();
    delay(1000);
    cam.start();
  }

}


