class Star
{
  private int myWidth;
  private int myHeight;
  private int myColor;
  private float myX;
  private float myY;
  public Star()
  {
    myX = (float)(Math.random()*601);
    myY = (float)(Math.random()*601);
    myWidth = (int)(Math.random()*4)+1;
    myHeight = myWidth;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    rect(myX,myY,myWidth,myHeight);
  }
}
