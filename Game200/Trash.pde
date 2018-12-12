class Trash{
  PVector position;
  PVector center;
  int fullWidth;
  int fullHeight;
  int halfWidth;
  int halfHeight;
  boolean isAlive;
  PImage imgTrash;
  
  Trash(float posX, float posY,PImage img){    
    position = new PVector(); 
    center = new PVector();
    position.x = posX;
    position.y = posY;
    center.x = position.x + halfWidth;
    center.y = position.y + halfHeight;
    isAlive = true; 
    halfHeight = 12;
    halfWidth  = 12;
    fullWidth  = 24;
    fullHeight = 24;   
    imgTrash=img;
  }
  
  void show(){
    //fill(0,255,0);
    //rect(position.x,position.y,fullWidth,fullHeight);
    image(imgTrash,position.x,position.y,fullWidth,fullHeight);
  }
  
  void checkCollision(int playerCenterX, int playerCenterY, int playerHalfDimension){
    if (isAlive == true){
      if ((abs(center.x - playerCenterX) > halfWidth + playerHalfDimension) ||
          (abs(center.y - playerCenterY) > halfHeight + playerHalfDimension)) {
        isAlive = true;
      } else {
        isAlive = false;
      }
    }
  }    
  
}
