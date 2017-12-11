class Button{
    float buttonX, buttonY;
    int buttonWidth, buttonHeight;
    boolean overButton, buttonOn;
    color c;
    
    Button(float tempbuttonX, float tempbuttonY, int tempbuttonWidth, int tempbuttonHeight,color c){
    this.buttonX = tempbuttonX;
    this.buttonY = tempbuttonY;
    this.buttonWidth = tempbuttonWidth;
    this.buttonHeight = tempbuttonHeight;  
    this.c = c;
    }
  
  void buttonDisplay()
  {
    if(buttonOn)
      fill(72, 91, 200,80);
    else
      noFill();
    if(isOver(mouseX,mouseY)){
      stroke(0);
      strokeWeight(2);
    } else {
     noStroke(); 
    }
    stroke(c);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
  }
  
  boolean isOver(int x, int y)
  {
   return x > buttonX && x < buttonX+buttonWidth && y > buttonY && y < buttonY+buttonHeight; 
  }
  
  boolean hasClicked()
  {
   boolean changeState = isOver(mouseX, mouseY);
   if(changeState)
   {
    buttonOn =! buttonOn;
   }
   return changeState;
  } 
}