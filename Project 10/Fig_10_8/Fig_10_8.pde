/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Capture cam;
Movie ghost;

void setup()
{
  String[] cameras = Capture.list();
  println("Available cameras:");
 
 for (int i = 0; i < cameras.length; i++) 
  {
    println(cameras[i]);
  }

  size(1280, 1024);
  ghost = new Movie(this, "dave.mp4");
  cam= new Capture(this, cameras[30]);
  ghost.loop();
  cam.start();
}



void draw() 
{
  if (ghost.available() == true&&cam.available()==true) 
  {
    ghost.read();
    cam.read();
  }

  image(cam, 0, 0, width, height);
  if (second()%10==0)
  {
    ghost.pause();
    saveFrame();
    delay(1000);
    ghost.play();
  }
}


