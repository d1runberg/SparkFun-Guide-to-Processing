JSONObject json;
void update_data()
{
  json = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=Boulder,CO");
  print(json);
}

//coord variables
float lon;
float lat;

//system variables
int sunR;
int sunS;

//main weather variables
float temp;
float pressure;
int humidity;

//wind variables
float windS;
float windD;

//cloud variable
int cloud;

//weather variables
int ID;
String condition;
String description;
String icon;
PImage weatherIcon;

