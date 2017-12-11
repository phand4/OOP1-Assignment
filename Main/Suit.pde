class suit{
  float cx, cy;
  color c, c2;
  float hd, td, lad, rad, lld, rld;
  
  suit(float cx, float cy, color c, color c2, float hd, float td, float lad, float rad, float lld, float rld){
    this.cx = cx;
    this.cy = cy;
    this.c = c;
    this.c2 = c2;
    this.hd = hd;
    this.td= td;
    this.lad = lad;
    this.rad = rad;
    this.lld = lld;
    this.rld = rld;
  }
  void render(){
    stroke(c);
    strokeWeight(10);
    line(width*0.2, height/8, width*0.73, height/8);
    line(width*0.2, height/8,width/8, height/4);
    line(width/8, height/4, width/8, height*0.7);
    line(cx, height/4, width*0.8, height*0.7);
    line(width*0.73, height/8,cx, height/4);
    stroke(c2);
    line((width*0.2), (height/8)-5, (width*0.73), (height/8)-5);
    line((width*0.2)-10, height/8,(width/8)-10, height/4);
    line((width/8)-10, height/4, (width/8)-10, height*0.7);
    line(cx-10, height/4, (width*0.8)-10, height*0.7);
    line((width*0.73)-10, height/8,cx-10, height/4);
    
    strokeWeight(3);
    rectMode(CENTER);
    rect(cx, cy+40, 200, 200);
    //float life =3 ;
    
      fill(c2); 
      ellipse(cx, cy, 25, 25); //head
      ellipse(cx, cy+40, 25, 45); //torso
      ellipse(cx-23, cy+40, 15, 45); //larm
      ellipse(cx+23, cy+40, 15, 45); //Rarm
      ellipse(cx-10, cy+80, 15, 45); //lleg
      ellipse(cx+10, cy+80, 15, 45); //Rleg
    
  }
  
  void update()
  {
    
    
  }
  
  PShape head;
}