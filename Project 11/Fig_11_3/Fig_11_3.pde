import ddf.minim.*;

Minim minim;
AudioPlayer song;
AudioMetaData data;

void setup()
{
  size(500, 500);   
  
 minim = new Minim(this);
  song = minim.loadFile("01 Radioactive.mp3");
  data = song.getMetaData(); 
  song.play();

}

void draw()
{
  background(61,147,76);
  noStroke();   
  float pos = map(song.position(),0,song.length(),0,300); //map position to 0-300
  
  textAlign(CENTER);   //align text to center
  fill(0);  
  text(data.title(),width/2,55);   //song title
  text(data.author(),width/2,70);   //artist
  text(data.album(),width/2,85);   //album title
  
  //position
  text(song.position()/1000 + " out of " + song.length()/1000,width/2,100);  
  
  fill(255);   
  rect(100,110,300,50);   //base rectangle
  fill(255,0,0);   
  rect(100,110,pos,50);   //song position rectangle
}


void keyPressed()
{
   if(key == 's')
   {
    song.pause();   //if s key is pressed pauses the song
   } 
   if(key == 'p')
   {
    song.play();   //if p key is pressed play the song
   }
}

