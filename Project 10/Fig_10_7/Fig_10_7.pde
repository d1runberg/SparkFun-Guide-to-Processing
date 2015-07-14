/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Capture cam;
Movie ghost;

  Now for the setup of our sketch! You will find much of it familiar to the example sketch we have been working with. 

void setup()
{
  String[] cameras = Capture.list();
  println("Available cameras:");
 
 for (int i = 0; i < cameras.length; i++) 
  {
    println(cameras[i]);
  }

  size(1280, 1024);
  ghost = new Movie(this, "dumby.mp4");
  cam= new Capture(this, cameras[30]);
  ghost.loop();
  cam.start();
}



void draw() 
{
  if (movie.available() == true&&cam.available()==true) 
  {
    movie.read();
    cam.read();
  }

  image(cam, width/2, height/4, width/2, height/2);


  image(movie, 0, height/4, width/2, height/2);
}


