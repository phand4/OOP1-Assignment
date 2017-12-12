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
          text("Identity: Walking stick", cx-150, cy+30);
          if(question){
             text("Status: Uncompliant", cx-150, cy+60);
             text("Owner: Still missing", cx-150, cy+ 90);
          } else {
             text("Status: Used", cx-150, cy+60);
              text("Owner: Missing.", cx-150, cy+ 90);
              text("Inquire stick of it's owner?", cx-160, cy+120);
              stickbtnyes = new Button(cx-100, cy+140, 15, 15, color(181, 230, 29));
              stickbtnno = new Button(cx-20, cy+140, 15, 15, color(237, 28, 36, 180)); 
              stickbtnyes.buttonDisplay();
              stickbtnno.buttonDisplay(); 
              if(stickbtnyes.hasClicked()){
                 question = true;   
               }

          }
      }
    }
}
Button stickbtnyes;
Button stickbtnno;