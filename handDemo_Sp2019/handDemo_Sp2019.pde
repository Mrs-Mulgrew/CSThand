Button button; // here we declare an object button of class Button
Button reset;
Button lights;
Button[] commands;
String[] captions;

int numButtons;

int counter;
boolean lightsOn;

void setup(){
  size(800, 600);
  
  numButtons = 3;
  commands = new Button[numButtons];
  
  // 0 - "click me" button
  // 1 - reset button
  // 2 - lights on/off button
  for(int i = 0; i<numButtons;i++){
    commands[i] = new Button(width/2, 50+55*i, 100, 50); // all buttons in center, stacked vertically
  }
  
  //set colors besides default
  commands[0].setColor(#2968CB, #7CABF5);
  commands[2].setColor(#3DB7B4, #53F2EE);
  
  //set Caption besides default blank
  commands[0].setCaption("Click me!", 15, #FAEE7E);
  commands[1].setCaption("Reset");
  
 
  
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
    commands[i].display();
  }
  
  fill(100);
  text(counter, 50, 50);
}

void mousePressed(){
  if(commands[0].mouseOver()){
    counter++;
  }else if(commands[1].mouseOver()){
    counter = 0;
  }else if(commands[2].mouseOver()){
    lightsOn = !lightsOn;
  }
}
