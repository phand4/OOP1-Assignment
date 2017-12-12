import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


void setup()
{
  //display setup
  fullScreen();
  location = loadImage("location.jpg");
  target = loadImage("target.png");
  imgW = location.width;
  imgH = location.height;
  
  //objects
  Radar = new radar(width / 8, height * 0.85 , 100, 0.5, color(95, 123, 147, 180));
  Suit = new suit(width * 0.8, height * 0.8, color(95, 123, 147, 180), color(72, 91, 108, 180));
  doginfo = new infoboxD("Dog", width/2, height/2, color(95, 123, 147));
  riverinfo = new infoboxR("River", width/6, height/2, color(95, 123, 147));
  stickinfo = new infoboxS("Stick", width*0.8, height/2, color(95, 123, 147));
   
  //buttons around the suit display
  btnhd = new Button((width*0.8)-80, (height*0.8)-50, 15, 15, color(95, 123, 147, 180));
  btnc = new Button((width*0.8)-80, (height*0.8), 15, 15, color(95, 123, 147, 180));
  btnra = new Button((width*0.8)-80, (height*0.8)+70, 15, 15, color(95, 123, 147, 180));
  btnla = new Button((width*0.8)+80, (height*0.8)-50, 15, 15, color(95, 123, 147, 180));
  btnrl = new Button((width*0.8)+80, (height*0.8), 15, 15, color(95, 123, 147, 180));
  btnll = new Button((width*0.8)+80, (height*0.8)+70, 15, 15, color(95, 123, 147, 180));
  
  //infobox buttons
  dogbutton = new Button((width/5), (height/2), 200, 200, color(255,255,255,255));
  riverbutton = new Button((width/2), (height/2), 150, 100, color(255,255,255,255));
  stickbutton = new Button((width*0.8), (height/2), 100, 50, color(255,255,255,255));
  close = new Button((width/2)+220, (height/2)-200, 20, 20, color(200,100,200,255));
  
  //Music
  minim = new Minim(this);
  wind = minim.loadFile("Wind.mp3", 5048);
  minim2 = new Minim(this);
  river = minim2.loadFile("river.mp3", 2048);
  minim3 = new Minim(this);
  dog = minim3.loadFile("Dog.mp3", 2048);
  minim4 = new Minim(this);
  move = minim4.loadFile("move.mp3", 5048);
}

void draw()
{
  tint(95, 123, 147,200); 
  //audio playing
  river.play();
  wind.play();
  dog.play();


  strokeWeight(10);
  cursor(target, 0, 0);
  //cursor(HAND);
  background(255);
  
  Suit.render();
  Radar.render();
  Radar.update();
  
  if(dogbool){
      dog.play();
      doginfo.render();
      close.buttonDisplay();    
  }
  if(!dogbool){
      if(testcounter >= 3){
        dogbutton.buttonDisplay();
      }
  }
  
  if(riverbool){
      riverinfo.render();
      close.buttonDisplay();    
  }
  if(!riverbool && !dogbool){
      if(testcounter >= 8){
        riverbutton.buttonDisplay();
      }
  }
  
  if(stickbool && !dogbool){
      stickinfo.render();
      close.buttonDisplay();    
  }
  if(!stickbool && !dogbool){
      if(testcounter >= 8){
        stickbutton.buttonDisplay();
      }
  }
  scale(scaler);
  btnhd.buttonDisplay();
  btnc.buttonDisplay(); 
  btnra.buttonDisplay(); 
  btnla.buttonDisplay(); 
  btnrl.buttonDisplay(); 
  btnll.buttonDisplay(); 
  translate(imgX, imgY);
  image(location, 0 , 0);

  textSize(30);   


}

void mousePressed(){
 panFromX = mouseX;
 panFromY = mouseY;
 testcounter++;
}

void mouseDragged(){
 panToX = mouseX;
 panToY = mouseY; 
 int xShift = panToX - panFromX;
 int yShift = panToY - panFromY;
 imgX = imgX + xShift;
 imgY = imgY + yShift;
 panFromX = panToX;
 panFromY = panToY;
 
 imgX = int(constrain(imgX, scaler * (width - imgW), 0));
 imgY = int(constrain(imgY, scaler * (height - imgH), 0));
  
}

void mouseClicked(){
 if(close.hasClicked()){
    dogbool = false; 
    stickbool = false;
    riverbool = false;
 }
 if(dogbutton.hasClicked()){
     dogbool = true;   
 }
 if(stickbutton.hasClicked()){
     stickbool = true;   
 }
 if(dogbutton.hasClicked()){
     stickbool = true;   
 }
 if(btnhd.hasClicked()){
   println("Button 1 clicked");

 }
 if(btnc.hasClicked()){
   println("Button 2 clicked");

 }
 if(btnra.hasClicked()){
   println("Button 3 clicked");

 }
 if(btnla.hasClicked()){
   println("Button 4 clicked");

 }
 if(btnll.hasClicked()){
   println("Button 5 clicked");
 }
 if(btnrl.hasClicked()){
   println("Button 6 clicked");

}
}
radar Radar;
suit Suit;
infoboxD doginfo;
infoboxS stickinfo;
infoboxR riverinfo;
int testcounter = 1;
int counter = 1;
color gone = color(255,255,255,180);
color fine = color(181, 230, 29, 180);
color medium = color(255, 127, 39, 180);
color injured = color(237, 28, 36, 180);
float scaler = 1;
PImage target;
Boolean dogbool = false;
Boolean riverbool = false;
Boolean stickbool = false;
PImage location; 
AudioPlayer wind, river, dog, move;
Minim minim;
Minim minim2;
Minim minim3;
Minim minim4;
int imgX = 0, imgY = 0, imgW = 0, imgH = 0;
int panFromX =0, panFromY =0;
int panToX = 0, panToY = 0;
Button btnhd;
Button btnc;
Button btnra;
Button btnla;
Button btnrl;
Button btnll;
Button dogbutton, riverbutton, stickbutton;
Button close;