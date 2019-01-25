class Button{
  // below we list the attributes of class Button
  float xCenter;
  float yCenter;
  float buttonWidth;
  float buttonHeight;
  color buttonColor;
  color buttonActiveColor;
  String caption;
  int textSize;
  color textColor;
  
  // below we write the code for the constructor 
  // method of the class Button
  // The name of the constructor is always the same 
  // as the name of the class.
  // Each class needs at least one constructor method.
  //this one has 4 arguments
  Button(float x, float y, float w, float h){
    // renaming for clarity and to use this code's global variables
    xCenter = x;  
    yCenter = y;
    buttonWidth = w;
    buttonHeight = h;
    buttonColor = color(130); //default gray
    buttonActiveColor = color(220); //if hovering over button (default light gray)
    caption = ""; // set as empty String for now
    textSize = 20; //default text size
    textColor = color(0); // default black
  }
  
  
  // the mnethod below displays the button on the canvas
  void display(){
    if(mouseOver()){
      fill(buttonActiveColor);
    }else{
      fill(buttonColor);
    }
    if(mousePressed && mouseOver()){
      strokeWeight(5); // make thicker border if pressed
      stroke(buttonActiveColor);
    }else{            // otherwise no border
      noStroke(); 
    }
    rectMode(CENTER);
    rect(xCenter, yCenter,
            buttonWidth, buttonHeight, 0.2 * buttonHeight); //rounded corners
    textAlign(CENTER, CENTER);
    textSize(textSize);
    fill(textColor);
    text(caption, xCenter, yCenter);
  }
  
  // submethod to be called in main program using buttonName.setColor(...,...)
  void setColor(color c1, color c2){
    buttonColor = c1;
    buttonActiveColor = c2;
  }
  // set Caption with 3 arguments
  // submethod to be called in main program using buttonName.setCaption(...,...,...)
  void setCaption(String s, int i, color c){
    caption = s;
    textSize = i;
    textColor = c;
  }
  // set Caption with 1 argument
  // submethod to be called in main program using buttonName.setCaption(...)
  void setCaption(String s){
    caption = s;
  }
  
  
  //returns true if on top of button, used above in constructor method to switch to active color
  //also used in main program with buttonName.mouseOver() in void mouseClicked(){} 
  boolean mouseOver(){ 
    return mouseX > xCenter - 0.5 * buttonWidth  &&
           mouseX < xCenter + 0.5 * buttonWidth  &&
           mouseY > yCenter - 0.5 * buttonHeight &&
           mouseY < yCenter + 0.5 * buttonHeight;
  }
} //end of class Button
