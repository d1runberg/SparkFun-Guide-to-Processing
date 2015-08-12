JSONObject json;

void setup() 
{
  json = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=Boulder,CO&units=imperial");

  JSONObject coord = json.getJSONObject("coord");
  float lon = coord.getFloat("lon");
  float lat = coord.getFloat("lat");

  println(lon + "," + lat);
}

