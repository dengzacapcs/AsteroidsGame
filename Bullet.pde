class Bullet extends Floater {
	public void setX(int x){
        myCenterX = x;
    }
    public int getX(){
        return (int)myCenterX;
    }
    public void setY(int y){
        myCenterY = y;
    }
    public int getY(){
        return (int)myCenterY;
    }
    public void setDirectionX(double x){
        myDirectionX = x;
    }

    public double getDirectionX(){
        return myDirectionX;
    }
    public void setDirectionY(double y){
        myDirectionY = y;
    }
    public double getDirectionY(){
        return myDirectionY;
    }
    public void setPointDirection(int degrees){
        myPointDirection = degrees;
    }
    public double getPointDirection(){
        return myPointDirection;
    }
	public Bullet (Spaceship theShip){
    fill(color(0,255,0));
    stroke(color(0,255,0));
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		float dRadians =(float)myPointDirection*((float)Math.PI/180);
		myDirectionX = theShip.getDirectionX() + 5 * cos((float)dRadians);
		myDirectionY = theShip.getDirectionY() + 5* sin(dRadians);
	}
	public void show(){
		ellipse((float)myCenterX, (float)myCenterY, (float)10, (float)10);
	}
}