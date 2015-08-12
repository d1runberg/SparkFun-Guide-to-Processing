
/*This example uses the OpenPath Creative Commons audio sample library which I have
included in the data folder of this sketch. As you play around with the example sound 
board try swapping out the sample files for different instruments or even your favorite
movie quote...R2D2 is always a good choice!
*/
import ddf.minim.*;

Minim minim;

AudioPlayer song;
AudioSample drumBase;
AudioSample cowBell;
AudioSample prayerBowl;
AudioSample tamborine;

void setup()
{
  size(200,200);
  background(150);
  
  minim = new Minim(this);
  
  song = minim.loadFile("M_Renkema_-_Beat_97.mp3");
  
  drumBase = minim.loadSample("drum-bass-hi-1.wav", 512);
  cowBell = minim.loadSample("cowbell-small-open.wav",512);
  prayerBowl = minim.loadSample("prayer bowl Db.wav",512);
  tamborine = minim.loadSample("tambourine-rock-single.wav",512);

  song.loop(12);
}

void draw()
{
 
}

void keyPressed()
{

  if (keyPressed)
  {

    if (keyCode==UP)
    {
      drumBase.trigger();
    }

    if (keyCode==DOWN)
    {
      prayerBowl.trigger();
    }

    if (keyCode==LEFT)
    {
      cowBell.trigger();
    }

    if (keyCode==RIGHT)
    {
      tamborine.trigger();
    }
  }
}

