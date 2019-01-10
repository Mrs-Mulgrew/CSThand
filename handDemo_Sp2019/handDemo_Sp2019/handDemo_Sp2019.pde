Button[] commandButtons;    // here we declare an array of object buttons of class Button
String[] captions; // here we declare an array of captions

int numButtons;

int counter;
boolean lightsOn;

void setup(){
  size(800, 600);
  
  numButtons = 3;
  commandButtons = new Button[numButtons];
  captions = new String[numButtons];
  
  // 0 - "click me" button
  // 1 - reset button
  // 2 - lights on/off button
  for(int i = 0; i<numButtons;i++){
    commandButtons[i] = new Button(width/2, 50+55*i, 200, 50); // all buttons in center, stacked vertically
  }
  
  //set colors besides default
  commandButtons[0].setColor(#2968CB, #7CABF5);
  commandButtons[2].setColor(#3DB7B4, #53F2EE);
  
  // fill caption array
  captions[0] = "Click me!";
  captions[1] = "Reset";
  captions[2] = " ";
  //set Caption besides default blank using the array of captions
  for(int i = 0; i<numButtons;i++){
   commandButtons[i].setCaption(captions[i]); //uses default size and color for caption 
  }
  
  // ---- OR ---- you could set captions independently without an array of captions. 
  // -----------  this would let you control the size and color of each caption.
  //commandButtons[0].setCaption("Click me!", 40, #FAEE7E);
  //commandButtons[1].setCaption("Reset");
  
 
  
  //initiate light on
  lightsOn = true;
  //initiate counter at 0
  counter = 0;
}

void draw(){
  if(lightsOn){
    background(255);
  }else{
    background(0);
  }
  
  // display buttons
  for(int i = 0; i<3;i++){
    commandButtons[i].display();
  }
  
  fill(100);
  text(counter, 50, 50);
}

void mousePressed(){
  if(commandButtons[0].mouseOver()){
    counter++;
  }else if(commandButtons[1].mouseOver()){
    counter = 0;
  }else if(commandButtons[2].mouseOver()){
    lightsOn = !lightsOn;
  }
}
