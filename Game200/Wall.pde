class Wall{
  PVector position;
  PVector center;
  int halfWidth;
  int halfHeight;
  int fullWidth;
  int fullHeight;
  
  Wall(int posX, int posY, int wd, int ht ){
  
    position= new PVector();
    center = new PVector();
    halfWidth= wd/2;
    halfHeight= ht/2;
    fullWidth= wd;
    fullHeight= ht;
    position.x=posX;
    position.y=posY;
    center.x=posX+ halfWidth;
    center.y= posY+ halfHeight;
  }
  
  void show(){
    noStroke();
    fill(200,200,200);
    rect(position.x, position.y, fullWidth, fullHeight);
  }
  
  
}
