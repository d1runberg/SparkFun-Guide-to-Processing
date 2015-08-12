import ddf.minim.*;  //import library
Minim minim;         //minim library class object called minim
AudioPlayer song;    //AudioPlayer object called song

void setup()
{
  size(500,500);
  minim = new Minim(this);
  song = minim.loadFile("01 Radioactive.mp3");
  song.play();
}

void draw()
{
  background(150);
  fill(0);
  text(song.position() + " out of " + song.length(), width/2,height/2);
}

void keyPressed()
{
  if(key == 's')
  {
    song.pause(); //if S key is pressed, stop the song
  }
  
  if(key == 'p')
  {
    song.play(); //if P key is pressed, play the song
  }
}
