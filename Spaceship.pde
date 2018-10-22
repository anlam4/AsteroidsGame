class Spaceship extends Floater  
{   
  public Spaceship()
  {
    corners  = 4;
    int[] xS = {16,-8,-4,-8};
    int[] yS = {0,-8,0,8};
    xCorners = xS;
    yCorners = yS;
    
  }
  public void setX(int x);  
  public int getX();   
  public void setY(int y);   
  public int getY();   
  public void setDirectionX(double x);   
  public double getDirectionX();   
  public void setDirectionY(double y);   
  public double getDirectionY();   
  public void setPointDirection(int degrees);   
  public double getPointDirection(); 
}
