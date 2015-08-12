int r = 0;
int g = 0;
int b = 0;
void setup()
{
  Serial.begin(9600);
  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
}
void loop()
{
  analogWrite(9,r);
  analogWrite(10,g);
  analogWrite(11,b);

  if(Serial.available() > 0)
  {
    r = Serial.parseInt();
    g = Serial.parseInt();
    b = Serial.parseInt();
  }
}
