import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


void setup()
{
  fullScreen();
  location = loadImage("location.png");
  target = loadImage("target.png");
  Radar = new radar(width / 8, height * 0.85 , 100, 0.5, color(95, 123, 147, 180));
  Suit = new suit(width * 0.8, height * 0.8, color(95, 123, 147, 180), color(72, 91, 108, 180), hd, td, lad, rad, lld, rld);
  imgW = location.width;
  imgH = location.height;
  minim = new Minim(this);
  wind = minim.loadFile("Wind.mp3", 5048);
}

void draw()
{
  wind.play();
  strokeWeight(10);
  cursor(target, 0, 0);
  background(255);

  Suit.render();
  Radar.render();
  Radar.update();
  
  scale(scaler);
  translate(imgX, imgY);
  image(location, 0 , 0);
  tint(95, 123, 147, 190); 
    
}

void mousePressed(){
 panFromX = mouseX;
 panFromY = mouseY;
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
radar Radar;
suit Suit;
float hd, td, lad, rad, lld, rld;
float scaler = 1;
PImage target;
PImage location; 
AudioPlayer wind;
Minim minim;
int imgX = 0, imgY = 0, imgW = 0, imgH = 0;
int panFromX =0, panFromY =0;
int panToX = 0, panToY = 0;