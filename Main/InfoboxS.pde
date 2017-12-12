class infoboxS
{
  
  String object;
  float cx;
  float cy;
  color c;
  boolean question;

  infoboxS(String object,float cx,float cy, color c){
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
      if(object == "Stick"){
          text("Identity: Walking stick", cx-50, cy+30);
          if(question){
             text("Status: Uncomplient", cx-50, cy+60);
             text("Owner: Still missing", cx-50, cy+ 90);
          } else {
             text("Status: Used", cx-50, cy+60);
              text("Owner: Missing.", cx-50, cy+ 90);
              text("Inquire stick of it's owner?", cx-50, cy+110);
              stickbtnyes = new Button(cx-100, cy+130, 15, 15, color(181, 230, 29, 180));
              stickbtnno = new Button(cx-100, cy+130, 15, 15, color(237, 28, 36, 180)); 
              stickbtnyes.buttonDisplay();
              stickbtnno.buttonDisplay(); 

          }
      }
    }
}
Button stickbtnyes;
Button stickbtnno;