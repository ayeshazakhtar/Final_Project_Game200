class Enemy{

  PVector position;
  PVector center;
  PVector velocity;
  int speed;
  int halfHeight;
  int halfWidth;
  int fullHeight;
  int fullWidth;
  PImage imglazy;
  
  Enemy(float posX, float posY, float velX, float velY,PImage img){
    position   = new PVector();
    center     = new PVector();
    velocity   = new PVector();
    position.x = posX;
    position.y = posY;
    velocity.x = velX;
    velocity.y = velY;
    speed      = 2;
    halfHeight = 13;
    halfWidth  = 13;
    fullWidth  = 26;
    fullHeight = 26;
    center.x   = position.x + halfWidth;
    center.y   = position.y + halfHeight;
    imglazy= img;
  }
  
  void show(){
    //fill(255,0,0);
    //rect(position.x, position.y, fullWidth, fullHeight);
    image(imglazy,position.x,position.y,fullWidth,fullHeight);
   }
  
  void update(){
    boolean col = false;
    position.add(velocity);
    if(collision(int(position.x) + halfWidth, int(position.y) + halfHeight, halfWidth)){
      position.sub(velocity);
      col = true;
    }
    center.x = position.x + halfWidth;
    center.y = position.y + halfHeight;
    if (col == true
      || position.x < 0
      || position.x > width
      || position.y < 0
      || position.y > height) {
      velocity.x = velocity.x * (-1);
      velocity.y = velocity.y * (-1);
    }
  }
    
}
