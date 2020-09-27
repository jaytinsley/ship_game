class island {

  int islandSize, X, Y;

  island() {
    islandSize = int(random(40, 150));
    X = int(random(-2000, 2000));
    Y = int(random(-2000, 2000));
    for (int i= 0; i < locations.size(); i++){
    
    }
    

    while (int(sqrt((X*X)+(Y*Y))) > 2000 ) {
      X = int(random(-2000, 2000));
      Y = int(random(-2000, 2000));
      
    }
    
    
  }
  
}

class boat {
  int xTraveled, yTraveled, xSpeed, ySpeed;
}



boat player = new boat();

ArrayList<island> locations = new ArrayList<island>();
void setup() {

  size(800, 800);

  for (int i=0; i < random(50, 200); i++) {
    locations.add(new island());
  }
}

void draw() {
  background(0);




  player.xTraveled = player.xTraveled - player.xSpeed;
  player.yTraveled = player.yTraveled - player.ySpeed;


  fill(0, 90, 120);
  circle(width/2-player.xTraveled, height/2-player.yTraveled, 4000);

  for (int i=0; i < locations.size(); i++) {
    island currentIsland = locations.get(i);
    fill(38, 203, 38);

    circle(currentIsland.X-player.xTraveled + width/2, currentIsland.Y - player.yTraveled + height/2, currentIsland.islandSize);
  }

  fill(203, 132, 38);
  rect(width/2, height/2, 10, 20);
}

void keyPressed() {
  if (key == 'a') {
    player.xSpeed = 20;
  }
  if (key == 'w') {
    player.ySpeed = 20;
  }
  if (key == 'd') {
    player.xSpeed = -20;
  }
  if (key == 's') {
    player.ySpeed = -20;
  }
  if (key == 'l') {
    println("X: " + player.xTraveled);
    println("Y: "+ player.yTraveled);
  }
}

void keyReleased() {
  if (key == 'a') {
    player.xSpeed = 0;
  }
  if (key == 'w') {
    player.ySpeed = 0;
  }
  if (key == 'd') {
    player.xSpeed = 0;
  }
  if (key == 's') {
    player.ySpeed = 0;
  }
}

void test() {
  println("test");
}
