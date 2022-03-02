PImage bgImg; //backgroundImage
PImage ghImg; //groundhogImage
PImage lifeImg;
PImage robotImg;
PImage soilImg;
PImage soldierImg;

//intSoldierRobotRazerMovement
int sdX,sdY,rbX,rbY,rzX,rzY,rzXX;


void setup() {
//windowsize
  size(640, 480, P2D);

//soldierStart
  sdX = 0;

//soldierMoveRandomly
  sdY = floor(random(2,6))*80; //160,240,320,400
  
//robotMoveRandomly
  rbY = floor(random(2,6))*80; //160,240,320,400
  rbX = floor(random(3,7))*80; //240,320,400,480
 
//razerStart
  rzX=rbX-25; //150,295,375,455
  rzXX=rbX-45; //195,275,355,435
  rzY=rbY+37; //277,357,437,517
  

  
//loadinImg  
  bgImg=loadImage("groundhogimg/bg.jpg");
  ghImg=loadImage("groundhogimg/groundhog.png");
  lifeImg=loadImage("groundhogimg/life.png");
  robotImg=loadImage("groundhogimg/robot.png");
  soilImg=loadImage("groundhogimg/soil.png");
  soldierImg=loadImage("groundhogimg/soldier.png");


}




void draw() {
  //clear_background
  background(0);
  
  //BackgroundAndSoil
  image(bgImg,0,0);
  image(soilImg,0,160);
  
  //grass
  stroke(124,204,25);
  strokeWeight(15);
  line(0,160,640,160);
  
  //life
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  //groundhog
  image(ghImg,320,80);
  
  //Sun
  stroke(255,255,0);
  strokeWeight(5);
  fill(253,184,19);
  circle(590,50,120);
  
  //soldier
  image(soldierImg,sdX,sdY);
  sdX +=3; //speed
  sdX %=640; //solierLoop_0,1,2,3...640
  
  //robot
  image(robotImg,rbX,rbY);
 
   //razer
   stroke(255,0,0);
   strokeWeight(10);
   line(rzX,rzY,rzXX,rzY);
   //razerSpeed
   rzX-=2; //rzX=rbX-20-2;rbx-22,-24,-26...
   rzXX-=2;//rzXX=rbX-40-2;rbx-42,-44,-46...
   
   //razerLoop(rbx-20)to(rbx-200)
  //rzX=-(rzX%180)_0,-1,-2,-3,-4...
  

}
 
