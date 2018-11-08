class Asteroid extends Floater
{
  private int mySpeed;
  public Asteroid()
  {
    corners  = 8;
    int[] xS = {0,3,5,5,4,2,0,-4,-5,-5,-4,-2};
    int[] yS = {-5,-4,-3,1,3,5,5,3,1,-1,-3,-5};
    xCorners = xS;
    yCorners = yS;
    myColor = color(128,64,0);
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myDirectionX = Math.random()-.5;
    myDirectionY = Math.random()-.5;
    myPointDirection = 0;
    mySpeed = (int)(Math.random()*11)-5;
  }
  public void setX(int x) {myCenterX = x;}  
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;} 
  public void setDirectionX(double x) {myDirectionX = x;}   
  public double getDirectionX() {return myDirectionX;}   
  public void setDirectionY(double y) {myDirectionY = y;}   
  public double getDirectionY() {return myDirectionY;}   
  public void setPointDirection(int degrees) {myPointDirection = degrees;}   
  public double getPointDirection() {return myPointDirection;}
  
  public void move ()   //move the floater in the current direction of travel
  {      
    turn(mySpeed);  //changes myPointDirection       
    super.move();   //changes x and y coordinates by constant myDirectionX and Y
  } 
}
