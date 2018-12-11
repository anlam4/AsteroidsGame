Spaceship hal = new Spaceship();
Star[] galaxy = new Star[100];
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList<Bullet> thomas = new ArrayList<Bullet>();
float d;
int shields = 3;
boolean reset = false;
public void setup() 
{
  size(600, 600);
  for (int i = 0; i < galaxy.length; i++)
  {
    galaxy[i] = new Star();
  }
  for (int i = 0; i < 20; i++)
  {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < galaxy.length; i++)  //displays stars
  {
    galaxy[i].show();
  }
  while(shields == -1)
  {
    reset = true;
    textSize(32);
    fill(255);
    text("Spaceship destroyed!", 145, 200);
    text("Game over.", 215, 280);
    text("Press enter to reset.", 150, 360);
    System.out.println(shields);
  }
  while(rocks.size() == 0)
  {
    reset = true;
    textSize(32);
    fill(255);
    text("You win!", 230, 240);
    text("Press enter to reset.", 150, 330);
  }
  for (int i = 0; i < rocks.size(); i++)  //displays and moves asteroids
  {
    rocks.get(i).show();
    rocks.get(i).move();
    d = dist(hal.getX(), hal.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if (d <= 17) 
    {
      rocks.remove(i);
      shields = shields - 1;
    }
  }
  textSize(18);
  fill(255);
  text("Shields left : " + shields, 450, 30);
  for (int i = 0; i < thomas.size(); i++)
  {
    thomas.get(i).show();
    thomas.get(i).move();
    for (int ni = 0; ni < rocks.size(); ni++)
    {
      if (dist(rocks.get(ni).getX(), rocks.get(ni).getY(), thomas.get(i).getX(), thomas.get(i).getY()) <= 13)
      {
        rocks.remove(ni);
        thomas.remove(i);
        break;
      }
    }
  }
  //better response time
  //hyperspace not included: one press = multiple presses since draw() runs quickly
  if (keyPressed && keyCode != 16) {keyPressed();}
  hal.show();
  hal.move();
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
  } else if (keyCode == 16)
  {
    hal.setDirectionX(0);  //resets acceleration
    hal.setDirectionY(0);
    hal.setX((int)(Math.random()*600));  //new center X and Y
    hal.setY((int)(Math.random()*600));
    hal.setPointDirection((int)(Math.random()*360));  //new random direction
  } else if (keyCode == 32)
  {
    thomas.add(new Bullet(hal));
  } else if (keyCode == 10 && reset)
  {
    for (int i = 0; i < 20; i++)
    {
      rocks.add(new Asteroid());
    }
    shields = 3;
    //hyperspace
    hal.setDirectionX(0);  
    hal.setDirectionY(0);
    hal.setX((int)(Math.random()*600)); 
    hal.setY((int)(Math.random()*600));
    hal.setPointDirection((int)(Math.random()*360));
  }
}
