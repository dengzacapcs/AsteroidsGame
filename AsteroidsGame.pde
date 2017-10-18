int windowSize = 500;
Spaceship myShip;
public void setup() 
{
    size(500,500);
    myShip = new Spaceship(250,250);
}
void draw() 
{
    background(0);
    myShip.show();
    myShip.move();
}
public void keyPressed()
{
    System.out.println("keypressed");
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
       myShip.setX((int)(Math.random()*100));
       myShip.setY((int)(Math.random()*100));
       myShip.setDirectionX(0);
       myShip.setDirectionY(0);
       myShip.setPointDirection((int)(Math.random()*360));
   }
}

