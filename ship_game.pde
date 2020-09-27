class island {

  int islandSize, X, Y;
  
  island(){
  islandSize = int(random(1, 100));
  X = int(random(1, width));
  Y = int(random(1, height));
  }

//  int islandSize() {
//    return(int(random(1, 100)));
//  }

//  int X() {
//    print("test");
//    return(int(random(1, width)));
//  }

//  int Y() {
//    return(int(random(1, height)));
//  }
}

class boat {
  int X, Y, xSpeed, ySpeed;
}
boat player = new boat();
ArrayList<island> locations = new ArrayList<island>();
void setup() {

  size(800, 800);

  for (int i=0; i < random(0, 5); i++) {
    locations.add(new island());
  }
}

void draw() {
  background(0);
  fill(0, 90, 120);
  circle(width/2,height/2,5000);
  fill(203,132,38);
  rect(width/2,height/2,10,20);



  for (int i=0; i < locations.size(); i++) {
    island currentIsland = locations.get(i);
    fill(38, 203, 38);
    
    currentIsland.X = currentIsland.X - player.xSpeed;
    currentIsland.Y = currentIsland.Y - player.ySpeed;
    circle(currentIsland.X, currentIsland.Y, currentIsland.islandSize);
  }
  
  
  
}

void keyPressed(){
  if (key == 'a'){
     player.xSpeed = -10;
  test();
  }
  if (key == 'w'){
     player.ySpeed = -10;
  }
  if (key == 'd'){
     player.xSpeed = 10;
  }
  if (key == 's'){
     player.ySpeed = 10;
  }
}

void keyReleased(){
  if (key == 'a'){
     player.xSpeed = 0;
  }
  if (key == 'w'){
     player.ySpeed = 0;
  }
  if (key == 'd'){
     player.xSpeed = 0;
  }
  if (key == 's'){
     player.ySpeed = 0;
  }
}

void test(){
println("test");
}
