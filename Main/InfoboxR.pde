class infoboxR
{
  
  String object;
  float cx;
  float cy;
  color c;

  boolean stand;
  
  infoboxR(String object,float cx,float cy, color c){
    this.object = object;
    this.cx = cx;
    this.cy = cy;
    this.c = c;
    } 
                   
             
    void boxdisplay(){

        println("Working as intended");
    }
    
    void render(){
      fill(c);
      
      rect(cx, cy+40, 400, 400);
      fill(255,255,255);
      //put in image
      if(object == "River"){
          text("Identity: River", cx-50, cy+30);
          if(stand){
             text("Status: Still wet", cx-50, cy+60);
             text("Your legs : Water damaged", cx-50, cy+ 90);
          } else {
             text("Status: Wet", cx-50, cy+60);
             text("Texture : Wet", cx-50, cy+ 90);
              riverbtnyes = new Button(cx-100, cy+130, 15, 15, color(181, 230, 29, 180));
              riverbtnno = new Button(cx-100, cy+130, 15, 15, color(237, 28, 36, 180)); 
              riverbtnyes.buttonDisplay();      riverbtnno.buttonDisplay();              
          }
      }
    }
}
Button riverbtnyes;
Button riverbtnno;