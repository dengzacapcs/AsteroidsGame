int windowSize = 500;
Spaceship myShip;
Stars myStars;
ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bullets;
public void setup() 
{
  size(500, 500);
  myShip = new Spaceship(250, 250);
  myStars = new Stars(50);
  asteroids = new ArrayList<Asteroid>();
  bullets = new ArrayList<Bullet>();
  for (int i = 0; i<10; i++) {
    asteroids.add(new Asteroid((int)(Math.random()*500), (int)(Math.random()*500)));
  }
}
void draw() 
{
  background(0);
  myShip.show();
  myShip.move();
  myStars.show();
  for (int i = 0; i<asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), myShip.getX(), myShip.getY()) < 20) {
      asteroids.remove(i);
      i--;
    }
    for (int j = 0; j<bullets.size(); j++){
      try{
      if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), bullets.get(j).getX(), bullets.get(j).getY()) < 10){
        asteroids.remove(i);
        i--;
        bullets.remove(j);
        break;
      }
      } catch (ArrayIndexOutOfBoundsException e){
      }
    }
  }
  for (int i = 0; i<bullets.size(); i++){
    bullets.get(i).move();
    bullets.get(i).show();
  }
}
public void keyPressed()
{
  //System.out.println("keypressed");
  if (keyCode == UP) {
    myShip.accelerate(1);
  } else if (keyCode == DOWN) {
    myShip.accelerate(-1);
  } else if (keyCode == LEFT) {
    myShip.turn(-5);
  } else if (keyCode == RIGHT) {
    myShip.turn(5);
  } else if (key == ENTER) {
    myShip.setX((int)(Math.random()*500));
    myShip.setY((int)(Math.random()*500));
    myShip.setDirectionX(0);
    myShip.setDirectionY(0);
    myShip.setPointDirection((int)(Math.random()*360));
  } else if (keyCode == SHIFT){
    bullets.add(new Bullet(myShip));
  }
  
}