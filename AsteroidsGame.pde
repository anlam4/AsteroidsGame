Spaceship hal = new Spaceship();
public void setup() 
{
  size(600, 600);
  frameRate(1);
}
public void draw() 
{
  background(0);
  hal.show();
  keyPressed();
  hal.move();
  System.out.println(hal.getX());
}
public void keyPressed()
{
  if (keyCode == 37)  //press left arrow to turn left
  {
    hal.turn(-20);
    if (hal.getPointDirection() < 0)
    {
      hal.setPointDirection(360 + (int)hal.getPointDirection());
    }
  } else if (keyCode == 39)  //press right arrow to turn right
  {
    hal.turn(20);
    if (hal.getPointDirection() > 360)
    {
      hal.setPointDirection((int)hal.getPointDirection() - 360);
    }
  } else if (keyCode == 38)  //press up arrow to accelerate
  {
    hal.accelerate(10);
  } else if (keyCode == 16)  //press shift to enter hyperspace
  {
    hal.setX((int)(Math.random()*300));  //new center X and Y
    hal.setY((int)(Math.random()*300));
    hal.setPointDirection((int)(Math.random()*360));  //new random direction
    hal.setDirectionX(0);  //resets acceleration (fix: too fast)
    hal.setDirectionY(0);
  }
}
