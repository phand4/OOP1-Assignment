class infobox
{
  
  String object;
  float cx;
  float cy;
  color c;
  
  infobox(String object,float cx,float cy, color c){
    this.object = object;
    this.cx = cx;
    this.cy = cy;
    this.c = c;
    } 
    
    void boxdisplay(){
        fill(c);
        rect(cx, cy+40, 500, 500);
        println("Working as intended");
    }
    
    void render(){
      ellipse(cx, cy, 50, 50);
      ellipse(cx+200, cy+200, 100, 100);
    }
}