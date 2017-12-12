class infoboxD
{
  
  String object;
  float cx;
  float cy;
  color c;
  boolean pet;


  infoboxD(String object,float cx,float cy, color c){
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
      if(object == "Dog"){
          text("Identity: Dog", cx-50, cy+30);
          if(pet){
             text("Status: Good boy", cx-50, cy+60);
             text("Tail : Wagging", cx-50, cy+ 90);
          } else {
             text("Status: Curious", cx-50, cy+60);
              text("Tail : Inactive", cx-50, cy+ 90);
              dogbtnyes = new Button(cx-100, cy+130, 15, 15, color(181, 230, 29));
              dogbtnno = new Button(cx-20, cy+130, 15, 15, color(237, 28, 36)); 
              dogbtnyes.buttonDisplay();
              dogbtnno.buttonDisplay();  
               if(dogbtnyes.hasClicked()){
                 pet = true;   
               }
          }
      } 
    }
}
Button dogbtnyes;
Button dogbtnno;