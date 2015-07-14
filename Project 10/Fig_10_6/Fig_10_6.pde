/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Movie movie;
Capture cam;


void setup()
{
  String[] cameras = Capture.list();
  println("Available cameras:");
 
 for (int i = 0; i < cameras.length; i++) 
  {
    println(cameras[i]);
  }

  size(640, 360);
  background(0);
  // Load and play the video in a loop
  movie = new Movie(this, "dave.mp4");
  cam= new Capture(this, cameras[0]);
  movie.loop();
  cam.start();
  frameRate(120);
}


void draw() {
  if (movie.available() == true) {
    movie.read(); 
  }
  image(movie, 0, 0, width, height);
  filter(GRAY);
  filter(BLUR,2);
}


