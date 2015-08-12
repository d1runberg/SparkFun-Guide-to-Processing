void setup()
{
 Serial.begin(9600); //start serial communication at 9600 bps
}

void loop()
{
 int val = analogRead(A1); //read the light sensor
 Serial.println(val); //print val over serial
 delay(100); //wait 100 milliseconds
}
