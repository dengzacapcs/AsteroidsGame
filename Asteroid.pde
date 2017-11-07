class Asteroid extends Floater  
{
	private double angularVelocity;
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
	
	public void move(){
     
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;    
	myPointDirection += angularVelocity;	

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   

    public Asteroid(int x, int y){
        myCenterX = x;
        myCenterY = y;
        myDirectionX = Math.random()*10 - 5;
        myDirectionY = Math.random()*10 - 5;
        myPointDirection = 0;
        corners = 3;
        xCorners = new int[]{-2, -2, 2, 2};
        yCorners = new int[]{-2, 2, 2, -2};
        myColor = color(255,0,255);
		angularVelocity = Math.random()*5 - 3;
    }
    


}