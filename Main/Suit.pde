class suit{
  float cx, cy;
  color c, c2;
  Boolean stand;
  suit(float cx, float cy, color c, color c2, Boolean stand){
    this.cx = cx;
    this.cy = cy;
    this.c = c;
    this.c2 = c2;
    this.stand = stand;

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
    noFill();
    rect(cx, cy+40, 200, 200);
    //float life =3 ;
    
      fill(c2); 
      fill(color(181, 230, 29, 180));
      ellipse(cx, cy, 25, 25); //head

      ellipse(cx, cy+40, 25, 45); //torso

      ellipse(cx-23, cy+40, 15, 45); //larm

      ellipse(cx+23, cy+40, 15, 45); //Rarm
   
   if(stand == true){
     fill(color(237, 28, 36, 180));
   }
   ellipse(cx-10, cy+80, 15, 45); //lleg

   ellipse(cx+10, cy+80, 15, 45); //Rleg
    
  }
  
  void update()
  {
    
    
  }
  

}