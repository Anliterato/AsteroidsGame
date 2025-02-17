class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(10);
  }
  public void show(){
    fill(255,255,255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    //doesn't wrap around screen
    myCenterX += myXspeed;   
    myCenterY += myYspeed;     
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
