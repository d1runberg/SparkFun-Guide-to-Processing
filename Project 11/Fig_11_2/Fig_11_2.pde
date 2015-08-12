import ddf.minim.*;
Minim minim;
AudioPlayer song;

void setup()
{
  size(500,500);
  minim = new Minim(this);

  song = minim.loadFile("01 Radioactive.mp3");

  song.play();
} 
void draw()
{
  background(61,147,76);
  noStroke();
  float pos = map(song.position(),0,song.length(),0,300);
  
  textAlign(CENTER);
  fill(0);
  text(song.position()/1000 + " out of " + song.length()/1000,width/2,height/2);
  
  fill(255);
  rect(100,110,300,50);
  fill(255,0,0);
  rect(100,110,pos,50);
}


void keyPressed()
{
  if(key == 's')
  {
    song.pause();   //if s key is pressed, stop the song
  } 

  if(key == 'p')
  {
    song.play();   //if p key is pressed, play the song
  }
}



