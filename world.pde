/*@pjs preload="world-map.jpg"; */
PImage image;
void setup() {

  size(1100, 714);


  image = loadImage("pic.jpg");
  background(image);
}

class point {
  public int x;
  public int y;
  public boolean visited;
  
  point(int x1, int y1){
    x=x1;
    y=y1;
    visited = false;
  }
  point(){
    x=0;
    y=0;
    visited = false;
  }
  void draw(){
    noStroke();
    fill(#0000ff);
    ellipse(x,y,7,7);
  }
}
  
    
  point[] coordinates = {
    new point(159, 245), 
    new point(267, 223), 
    new point(278, 281), 
    new point(279, 291),
    new point(297, 253), 
    new point(305, 233), 
    new point(310, 229), 
    new point(314, 224), 
    new point(541, 192), 
    new point(899, 268), 
    new point(890, 294), 
    new point(850, 338),
    new point(750, 450)
  };

void draw(){
  image(image, 0, 0);
  for (int i = 0; i !=12; i++){
    coordinates[i].draw();
  }
  for (int i = 0; i !=11; i++){
  stroke(#ff0000);
  line(coordinates[i].x, coordinates[i].y, coordinates[i+1].x, coordinates[i+1].y);

  }

}  
