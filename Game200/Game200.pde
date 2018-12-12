//Ayesha Khalid
//final project for Game 200
//concept: Keeping the ocean clean
//remaining obj to add: enemies= done,pickups= done,dropoff point = done 
//counter,timer,ocean
//game start,game over,graphics

PImage imglazy;
PImage imgTrash;
PImage imgDump;
PImage imgSea;
PImage imgArrow;
PImage imgArrow2;
PImage imgScore;
PImage imgReset;

ArrayList <Wall> walls;
ArrayList <Enemy> enemies; 
ArrayList <Trash> plastic;
Player myPlayer;
boolean gameOver;

void setup(){
  size (1000,800);
  background(255);
  
  //images
  imglazy = loadImage("lazy.png");
  imgTrash= loadImage("trash3.png");
  imgDump= loadImage("dump2.png");
  imgSea= loadImage("sea2.png");
  imgArrow= loadImage("arrow1.png");
  imgArrow2= loadImage("arrow2.png");
  imgScore= loadImage("ui5.png");
  imgReset= loadImage("ui4.png");
  
  
  //static walls
  walls= new ArrayList <Wall>();
  walls.add(new Wall(800,0,20,800) ); //0
  walls.add(new Wall(50,40,200,20) ); //1
  walls.add(new Wall(300,100,20,200) ); //2
  walls.add(new Wall(400,150,200,20) ); //3
  walls.add(new Wall(400,150,20,200) ); //4
  walls.add(new Wall(520,50,200,20) ); //5
  walls.add(new Wall(720,50,20,200) ); //6
  walls.add(new Wall(0,150,100,20) ); //7
  walls.add(new Wall(100,150,20,200) ); //8
  walls.add(new Wall(200,150,20,200) ); //9
  walls.add(new Wall(200,400,200,20) ); //10
  walls.add(new Wall(450,250,200,20) ); //11
  walls.add(new Wall(600,250,20,200) ); //12
  walls.add(new Wall(150,300,20,200) ); //13
  walls.add(new Wall(250,470,200,20) ); //14
  walls.add(new Wall(530,350,20,200) ); //14.5
  walls.add(new Wall(690,470,120,20) ); //15
  walls.add(new Wall(350,530,200,20) ); //16
  walls.add(new Wall(0,500,50,20) ); //16.5
  walls.add(new Wall(50,400,20,120) ); //16.5(a)
  walls.add(new Wall(0,600,200,20) ); //17
  walls.add(new Wall(270,550,20,200) ); //18
  walls.add(new Wall(450,600,20,200) ); //19
  walls.add(new Wall(620,650,200,20) ); //21
  walls.add(new Wall(90,700,20,200) ); //23
  walls.add(new Wall(90,700,100,20) ); //24
  walls.add(new Wall(690,340,20,150) ); //25
  
  //enemies
  enemies = new ArrayList<Enemy>();
  enemies.add(new Enemy(60,80,0,2,imglazy) ); //first on right columm
  enemies.add(new Enemy(50,300,2,0,imglazy) );//second on right column
  enemies.add(new Enemy(100,650,0,2,imglazy) );//3rd on right column
  enemies.add(new Enemy(710,340,2,0,imglazy) );// 1st on last column
  enemies.add(new Enemy(680,700,0,3,imglazy) );//second on last column
  enemies.add(new Enemy(400,680,0,2,imglazy) );// bottom middle column
  enemies.add(new Enemy(450,80,4,0,imglazy) ); // bottom up
  enemies.add(new Enemy(300,330,0,2,imglazy) );// middle mid column
  enemies.add(new Enemy(500,290,2,0,imglazy) );// mid #2 mid column
  //player inialize
  myPlayer = new Player();
  gameOver = false;
  
  //trash
  plastic = new ArrayList<Trash>();
  plastic.add(new Trash(500,20,imgTrash) );
  plastic.add(new Trash(700,20,imgTrash) );
  plastic.add(new Trash(100,100,imgTrash) );
  plastic.add(new Trash(250,200,imgTrash) );
}


void draw(){
  background(255);
  //static garbage cans//
  image(imgDump,20,730,40,60);
  image(imgDump,730,730,40,60); //down right
  image(imgDump,740,400,40,60); //up right
  image(imgDump,30,180,40,60); // upleft
  
  //glass of water 
  //fill(0,255,0);
  //rect(850,400,100,130);
  image (imgSea, 850,400,100,130);
  //ui
  image(imgArrow,800,300,150,50);
  image(imgArrow2,800,600,100,50);
  image(imgScore,820,10,150,50);
  image(imgReset,820,80,150,50);

  
  //walls collision detection
  for (int i=0; i<walls.size(); i++){
    Wall tempWall;
    tempWall= walls.get(i);
    tempWall.show();
  }
  if(gameOver == false){
    myPlayer.update();
  }
  myPlayer.show();
  println(gameOver);
  
  //enemis
  for (int i=0; i<enemies.size(); i++) {
    Enemy tempEnemy;
    tempEnemy= enemies.get(i);
    tempEnemy.show();
    if (gameOver == false) {
      tempEnemy.update();
    } 
  }
  //Trash collision detection
  for(int i=0; i<plastic.size(); i++){
    Trash tempTrash;
    tempTrash = plastic.get(i);
    tempTrash.checkCollision(int(myPlayer.center.x), int(myPlayer.center.y), myPlayer.halfWidth);
    if (tempTrash.isAlive == true) {
      tempTrash.show();
    }
  }
  
  if (gameOver == true) {
   fill(0);
   textSize(40);
   text("GameOver", width/2 - 100,height/2);
  }   
}
