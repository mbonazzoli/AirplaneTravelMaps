PImage earth;
HashMap<Integer, Airport> airportMap = new HashMap<Integer, Airport>();

void setup(){
  size(600, 600);
  pixelDensity(displayDensity());
  earth = loadImage("Earth.png");
  loadData();
}
 
void draw(){
  image(earth, 0, 0, width, height);
}
 
void loadData(){
 Table airports = loadTable("airports.csv");
 Table airlines = loadTable("airlines.csv");
 
 for(int i = 0; i < airports.getRowCount(); i++) {
   TableRow row = airports.getRow(i);
   int id = row.getInt(0);
   String name = row.getString(1);
   float lat = row.getFloat(6);
   float lng = row.getFloat(7);
   
   Airport a = new Airport(id, lng, lat, name);
   airportMap.put(id, a);
   
 }
}
 