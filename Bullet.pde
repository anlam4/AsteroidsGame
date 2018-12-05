class Bullet extends Floater
{
  double dRadians;
  Bullet(Spaceship theShip)
  {
    
    myPointDirection = theShip.getPointDirection();
    dRadians = myPointDirection*(Math.PI/180);
    myCenterX = theShip.getX() + 21*Math.cos(dRadians);  //hypotenuse is 21
    myCenterY = theShip.getY() + 21*Math.sin(dRadians);  //not ready yet
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
  
  public void show()  //best not to change this
  {
    fill(255);
    stroke(255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 2);
  }
  //public void move - remove bullet after passes screen?
}
