Spaceship hal = new Spaceship();
Star[] galaxy = new Star[100];
public void setup() 
{
  size(600, 600);
  for (int i = 0; i < galaxy.length; i++)
  {
    galaxy[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < galaxy.length; i++)
  {
    galaxy[i].show();
  }
  if (keyPressed) {keyPressed();}  //only calls keyPressed() if a key is pressed; remove this not needed
  hal.show();
  hal.move();
  System.out.println(hal.getPointDirection() + "1");
}
public void keyPressed()
{
  if (keyCode == 37)  //press left arrow to turn left
  {
    hal.turn(-5);
    if (hal.getPointDirection() < 0)
    {
      hal.setPointDirection(360 + (int)hal.getPointDirection());
    }
  } else if (keyCode == 39)  //press right arrow to turn right
  {
    hal.turn(5);
    if (hal.getPointDirection() > 360)
    {
      hal.setPointDirection((int)hal.getPointDirection() - 360);
    }
  } else if (keyCode == 38)  //press up arrow to accelerate
  {
    hal.accelerate(.05);
  } else if (keyCode == 16)  //press shift to enter hyperspace
  {
    keyReleased();  //remove this and put if statement below; problem: shift pressed too many times
  }
}
void keyReleased()
{
    hal.setDirectionX(0);  //resets acceleration
    hal.setDirectionY(0);
    hal.setX((int)(Math.random()*600));  //new center X and Y
    hal.setY((int)(Math.random()*600));
    hal.setPointDirection((int)(Math.random()*360));  //new random direction
}
