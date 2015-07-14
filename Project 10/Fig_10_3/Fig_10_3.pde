/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Movie movie;

void setup() {
  size(640, 360);
  background(0);
  // Load and play the video in a loop
  movie = new Movie(this, "dave.mp4");
  movie.loop();
}

void draw() {
  if (movie.available() == true) {
    movie.read(); 
  }

  noTint();
  image(movie, 0, 0, width/2, height/2);
  
  tint(255,0,0);
  image(movie, width/2, 0, width/2, height/2);
  
}

