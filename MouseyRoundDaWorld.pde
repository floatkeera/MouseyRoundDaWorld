/*@pjs preload="pic.jpg"; */
PImage image;
void setup() {

  size(1100, 714);


  image = loadImage("pic.jpg");
  background(image);
  
  
  
}

class city {
  public int x;
  public int y;
  public boolean visited;
  
  city(int x1, int y1){
    x=x1;
    y=y1;
    visited = false;
  }
  city(){
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
  
    
  city[] coordinates = {
    new city(159, 245), 
    new city(267, 223), 
    new city(278, 281), 
    new city(279, 291),
    new city(297, 253), 
    new city(305, 233), 
    new city(310, 229), 
    new city(314, 224), 
    new city(541, 192),
    new city(850, 338), 
    new city(890, 294),
    new city(899, 268), 
   

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
