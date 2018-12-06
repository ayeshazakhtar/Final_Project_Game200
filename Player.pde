class Player{
  PVector position;
  PVector center;
  int speed;
  int halfHeight;
  int halfWidth;
  int fullHeight;
  int fullWidth;
  
  Player(){
    position= new PVector ();
    center= new PVector();
    speed= 2;
    halfHeight=10;
    halfWidth= 10;
    fullWidth = 20;
    fullHeight= 20;
    position.x=0;
    position.y=0;
    center.x=10;
    center.y=10;
  }
  void show(){
    fill(255,255,0);
    rect(position.x,position.y,fullWidth,fullHeight);
  }
  
  void update(){
    PVector movement;
    movement = new PVector(0,0);
    if (keyPressed== true){
      if(keyCode == UP && position.y > 0){
        movement.y= -speed;
      }
      else if(keyCode== DOWN && position.y < height){
        movement.y= speed;
      }
      else if(keyCode == RIGHT && position.x < width){
        movement.x= speed;
      }
      else if(keyCode==LEFT && position.x > 0){
        movement.x= -speed;
      }
    }
    position.add(movement);
    if (collision(int(position.x) + halfWidth, int(position.y) + halfHeight)){
      position.sub(movement);
    } 
  }
  
}
