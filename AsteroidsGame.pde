int windowSize = 500;
Spaceship myShip;
Stars myStars;
Asteroid[] asteroids;
public void setup() 
{
    size(500,500);
    myShip = new Spaceship(250,250);
    myStars = new Stars(50);
	asteroids = new Asteroid[10];
	for (int i = 0; i<10; i++){
		asteroids[i] = new Asteroid((int)(Math.random()*500), (int)(Math.random()*500));
		}
}
void draw() 
{
    background(0);
    myShip.show();
    myShip.move();
    myStars.show();
	for (int i = 0; i<10; i++){
	asteroids[i].move();
	asteroids[i].show();
	}
}
public void keyPressed()
{
    //System.out.println("keypressed");
   if (keyCode == UP){
       myShip.accelerate(1);
   }
   else if (keyCode == DOWN){
       myShip.accelerate(-1);
   }
   else if (keyCode == LEFT){
       myShip.turn(-5);
   }
   else if (keyCode == RIGHT){
       myShip.turn(5);
   }
   else if (key == ENTER){
       myShip.setX((int)(Math.random()*500));
       myShip.setY((int)(Math.random()*500));
       myShip.setDirectionX(0);
       myShip.setDirectionY(0);
       myShip.setPointDirection((int)(Math.random()*360));
   }
}

