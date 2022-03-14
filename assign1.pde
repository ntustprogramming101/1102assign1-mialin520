PImage bgImg; //backgroundImage
PImage ghImg; //groundhogImage
PImage lifeImg;
PImage robotImg;
PImage soilImg;
PImage soldierImg;

//int_Soldier_Robot_Razer
int sdX,sdY,rbX,rbY,rzX,rzY,rzLength,rzSpeed;


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
  rzX=rbX+5; //150,295,375,455
  rzLength=-20; 
  rzY=rbY+37; //277,357,437,517
  

  
//loadinImg  
  bgImg=loadImage("img/bg.jpg");
  ghImg=loadImage("img/groundhog.png");
  lifeImg=loadImage("img/life.png");
  robotImg=loadImage("img/robot.png");
  soilImg=loadImage("img/soil.png");
  soldierImg=loadImage("img/soldier.png");


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
  image(ghImg,280,80);
  
  //Sun
  stroke(255,255,0);
  strokeWeight(5);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  //soldier
  image(soldierImg,sdX,sdY);
  sdX +=3; //soldierSpeed
  if(sdX>=640){
    sdX=-40;
  }
  
  //robot
  image(robotImg,rbX,rbY);
 
   //razer
   stroke(255,0,0);
   strokeWeight(10);
   line(rzX,rzY,rzX-rzLength,rzY);
  
   rzSpeed=-2; //razerSpeed
   rzX+=rzSpeed;
   
   if(rzX<=rbX-195)  //if_razerX_Arrived(-200)
   {
     rzX=rbX+5;    //razer_Return
   }
 
}

 
