void setup()
{
 Serial.begin(9600); //start serial communication at 9600 bps
}

void loop()
{
  int light = analogRead(A1); //light sensor
  int sound = analogRead(A2); //microphone
  int temp = analogRead(A0); //temp sensor
  Serial.print(light); //print light over serial
  Serial.print(","); //add comma
  Serial.print(sound); //add sound
  Serial.print(","); //add comma
  Serial.println(temp); //add temp with carriage return
  delay(100); //wait 100 milliseconds
}
