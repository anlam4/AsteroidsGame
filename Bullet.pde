class Bullet extends Floater
{
  Bullet(Spaceship theShip)
  {
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
  
  //bullets not pointed in right direction
  public void show()
  {
    fill(255);
    stroke(255);
    ellipse((float)myCenterX+21, (float)myCenterY, 10, 2);
  }
  //public void move - remove bullet after passes screen?
}
