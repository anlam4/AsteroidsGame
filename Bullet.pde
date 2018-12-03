class Bullet extends Floater
{
  Bullet(Spaceship theShip)
  {
    //corners  = 10;
    //int[] xS = {4,8,9,7,4,-1,-5,-7,-6,-1};
    //int[] yS = {-8,-5,-1,4,7,7,4,-1,-5,-8};
    //xCorners = xS;
    //yCorners = yS;
    myColor = color(128,64,0);  //change color
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians);
    myDirectionY = 5 * Math.sin(dRadians);
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
  
  //circular bullets
  public void show()
  {
    //no need to translate; just use ellipse and myCenter X and Y
  }
}
