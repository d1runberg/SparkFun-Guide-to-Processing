void setup()

{ 

  size(200, 200);

  background(150); //background color

}

void draw()

{

  stroke(255, 0, 0);

  strokeWeight(5); 

  line(0, 0, 200, 200);

  strokeWeight(15); 

  stroke(0, 255, 0);

  line(50, 0, 200, 150);

  strokeWeight(30); 

  stroke(0, 0, 255);

  line(100, 0, 200, 100);

}
