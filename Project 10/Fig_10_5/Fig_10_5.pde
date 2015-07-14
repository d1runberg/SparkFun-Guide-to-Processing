void setup()

{

  size(250,250);  

}

void draw()

{

  strokeWeight(10); 

  for(int x = 0 ; x < 255 ; x += 10 )

  {

    stroke(random(255),random(255),random(255));

    point(x,height/2);

  }

}
