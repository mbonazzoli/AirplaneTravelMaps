class Airport {
  
  float x, y;
  int airport_ID;
  
  String city, country, name;
  
  Airport(int id, float lng, float lat, String tempN) {
    airport_ID = id;
    x = map(lng, -180, 180, 0, width);
    y = map(lat, 90, -90, 0, height);
    name = tempN;
  }
}