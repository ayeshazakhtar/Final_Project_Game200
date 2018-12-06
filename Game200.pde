//Ayesha Khalid
//final project for Game 200
//concept: Keeping the ocean clean
//remaining obj to add: enemies,pickups,dropoff point,counter,timer,ocean
//game start,game over,graphics

ArrayList <Wall> walls;
Player myPlayer;

void setup(){
  size (1000,800);
  background(255);
  //static walls
  walls= new ArrayList <Wall>();
  walls.add(new Wall(800,0,20,800) ); //0
  walls.add(new Wall(100,100,200,20) ); //1
  walls.add(new Wall(300,100,20,200) ); //2
  walls.add(new Wall(400,150,200,20) ); //3
  walls.add(new Wall(400,150,20,200) ); //4
  walls.add(new Wall(520,50,200,20) ); //5
  walls.add(new Wall(250,30,200,20) ); //5.5
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
  walls.add(new Wall(670,470,100,20) ); //15
  walls.add(new Wall(350,530,200,20) ); //16
  walls.add(new Wall(0,500,50,20) ); //16.5
  walls.add(new Wall(50,400,20,120) ); //16.5(a)
  walls.add(new Wall(0,600,200,20) ); //17
  walls.add(new Wall(270,550,20,200) ); //18
  walls.add(new Wall(450,600,20,200) ); //19
  walls.add(new Wall(610,560,20,160) ); //20
  walls.add(new Wall(550,700,200,20) ); //21
  walls.add(new Wall(710,600,20,100) ); //22
  walls.add(new Wall(90,700,20,200) ); //23
  walls.add(new Wall(90,700,100,20) ); //24
   walls.add(new Wall(690,300,110,20) ); //25
  walls.add(new Wall(690,300,20,100) ); //26
  //static garbage cans//
  
  myPlayer = new Player();
}


void draw(){
  background(255);
  for (int i=0; i<walls.size(); i++){
    Wall tempWall;
    tempWall= walls.get(i);
    tempWall.show();
  }
  myPlayer.update();
  myPlayer.show();
}
