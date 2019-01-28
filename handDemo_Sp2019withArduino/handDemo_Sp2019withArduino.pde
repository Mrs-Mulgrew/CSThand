import processing.serial.*;

Serial port;



Button[] commandButtons;    // here we declare an array of object buttons of class Button
String[] captions; // here we declare an array of captions

int numButtons;


PImage closedhand;
PImage onehand; 
PImage twohand;
PImage threehand;
PImage fourhand;
PImage openhand;
PImage pinkypromise;
PImage rockandroll;
PImage shaka;
boolean[] pictures;

int timeStart;

int rps; // rock paper scissor 0 1 or 2
//int timer;

void setup(){
  size(800, 600);
  
  closedhand= loadImage("closedhand.jpg");
  onehand= loadImage("onehand .jpg");
  twohand= loadImage("twohand.jpg");
  threehand= loadImage("threehand.jpg");
  fourhand= loadImage("fourhand.jpg");
  openhand= loadImage("openhand.jpg");
  pinkypromise= loadImage("pinky promise .jpg");
  rockandroll = loadImage("rock and roll hand .jpg");
  shaka = loadImage("shaka hand .jpg");
  
  port = new Serial(this, "/dev/cu.usbmodem1421", 9600);
  
  numButtons = 11;
  commandButtons = new Button[numButtons];
  captions = new String[numButtons];
  
  pictures= new boolean[numButtons];
  
  // 0 - "0" button
  // 1 - "1"
  // 2 - lights on/off button
  for(int i = 0; i<numButtons;i++){
    commandButtons[i] = new Button(100 +(i/10)*210, 50+55*(i%10), 200, 50); // all buttons in center, stacked vertically
  }
  
  //set colors besides default
  //commandButtons[0].setColor(#678ECB, #043DD3);
  //commandButtons[1].setColor(#CB0C29, #AA0921);
  //commandButtons[2].setColor(#3DB7B4, #0D6462);
  //commandButtons[3].setColor(#58EAE2, #4DD3CB);
  //commandButtons[4].setColor(#AA98EA, #8470C9);
  //commandButtons[5].setColor(#D1782E, #F08833);
  
  // fill caption array
  
  captions[0] = "0";
  captions[1] = "1";
  captions[2] = "2";
  captions[3] = "3";
  captions[4] = "4";
  captions[5] = "5";
  captions[6] = "Hello";
  captions[7] = "rock paper scissors?";
  captions[8] = "pinky promise?";
  captions[9] = "rock and roll!";
  captions[10] = "Hang loose";
  
  
  //set Caption besides default blank using the array of captions
  for(int i = 0; i<numButtons;i++){
   commandButtons[i].setCaption(captions[i]); //uses default size and color for caption 
  }
  
  // ---- OR ---- you could set captions independently without an array of captions. 
  // -----------  this would let you control the size and color of each caption.
  //commandButtons[0].setCaption("Click me!", 40, #FAEE7E);
  //commandButtons[1].setCaption("Reset");
  
 
  
 
}

void draw(){
  background(255);
  
  // while(0<port.available()){    
  //  val = port.read();
  //}
  
  
  
  // display buttons
  for(int i = 0; i<numButtons;i++){
    commandButtons[i].display();
  }
  
 
  
  imageMode(CENTER);
  
  
  
  
  
  if(pictures[0]){
    image(closedhand, 500, 400, 0.25 * closedhand.width, 0.25 * closedhand.height);
   }
  
  if(pictures[1]){
  image(onehand, 500, 400, 0.25 * onehand.width, 0.25 * onehand.height);
   }
  
  if(pictures[2]){
  image(twohand, 500, 400, 0.25 * twohand.width, 0.25 * twohand.height);
   }
  
  if(pictures[3]){
  image(threehand, 500, 400, 0.25 * threehand.width, 0.25 * threehand.height);
   }
  
   if(pictures[4]){
  image(fourhand, 500, 400, 0.25 * fourhand.width, 0.25 * fourhand.height);
   }
    if(pictures[5]){
      image(openhand, 500, 400, 0.25 * openhand.width, 0.25 * openhand.height);
   }
  
  if(pictures[6]){
    runHelloSequence(timeStart); 
  } 
  if(pictures[7]){
    if(rps == 0){
      image(closedhand, 500, 400, 0.25 * closedhand.width, 0.25 * closedhand.height); 
    }
    if(rps == 1){
      image(openhand, 500, 400, 0.25 * openhand.width, 0.25 * openhand.height);
    }
    if(rps == 2){
      image(twohand, 500, 400, 0.25 * twohand.width, 0.25 * twohand.height); 
    }
  }
  
  if(pictures[8]){
      image(pinkypromise, 500, 400, 0.25 * pinkypromise.width, 0.25 * pinkypromise.height);
   }
  if(pictures[9]){
      image(rockandroll, 500, 400, 0.25 * rockandroll.width, 0.25 * rockandroll.height);
   }
   if(pictures[10]){
      image(shaka, 500, 400, 0.25 * shaka.width, 0.25 * shaka.height);
   }
}

void mousePressed(){
  if(commandButtons[0].mouseOver()){
    port.write('0');//first finger at 0 degrees
    port.write('2');//second finger at 0 degrees
    port.write('4');//thrid finger at 0 degrees 
    port.write('6');//fourth finger at 0 degrees
    port.write('8');//fifth finger at 0 degrees
    
    
    pictures[0] = !pictures[0];
    //timeStart = millis();
    pictures[1] = false;
    pictures[2] = false;
    pictures[3] = false;
    pictures[4] = false;
    pictures[5] = false;
    pictures[6] = false;
    pictures[7] = false;
    pictures[8] = false;
    pictures[9] = false;
    pictures[10] = false;
  }
  else if(commandButtons[1].mouseOver()){
    pictures[1] = !pictures[1];
    port.write('0');// first at 180 degrees
    port.write('2');// second at 0 degrees
    port.write('4');//third finger at 0 degrees
    port.write('7');//fourth finger at 0 degrees
    port.write('8');//fifth finger at 0 degrees
    
    pictures[0] = false;
    pictures[2] = false;
    pictures[3] = false;
    pictures[4] = false;
    pictures[5] = false;
    pictures[6] = false;
    pictures[7] = false;
    pictures[8] = false;
    pictures[9] = false;
    pictures[10] = false;
    pictures[10] = false;
  }
  else if(commandButtons[2].mouseOver()){
    pictures[2] = !pictures[2];
    port.write('0');// first at 180 degrees
    port.write('2');// second at 180 degrees
    port.write('5');//third finger at 0 degrees
    port.write('7');//fourth finger at 0 degrees
    port.write('8');//fifth finger at 0 degrees
    
    pictures[0] = false;
    pictures[1] = false;
    pictures[3] = false;
    pictures[4] = false;
    pictures[5] = false;
    pictures[6] = false;
    pictures[7] = false;
    pictures[8] = false;
    pictures[9] = false;
    pictures[10] = false;
  }
  else if(commandButtons[3].mouseOver()){
    pictures[3] = !pictures[3];
    port.write('0');// first at 0 degrees
    port.write('3');// second at 180 degrees
    port.write('5');//third finger at 180 degrees
    port.write('7');//fourth finger at 180 degrees
    port.write('8');//fifth finger at 0 degrees
    
    
    pictures[0] = false;
    pictures[1] = false;
    pictures[2] = false;
    pictures[4] = false;
    pictures[5] = false;
    pictures[6] = false;
    pictures[7] = false;
    pictures[8] = false;
    pictures[9] = false;
    pictures[10] = false;
  }
  else if(commandButtons[4].mouseOver()){
    pictures[4] = !pictures[4];
    port.write('1');// first at 180 degrees
    port.write('3');// second at 180 degrees
    port.write('5');//third finger at 180 degrees
    port.write('7');//fourth finger at 180 degrees
    port.write('8');//fifth finger at 0 degrees
    
    
    pictures[0] = false;
    pictures[1] = false;
    pictures[2] = false;
    pictures[3] = false;
    pictures[5] = false;
    pictures[6] = false;
    pictures[7] = false;
    pictures[8] = false;
    pictures[9] = false;
    pictures[10] = false;
  }
  else if(commandButtons[5].mouseOver()){
     pictures[5] = !pictures[5];
    port.write('1');// first at 180 degrees
    port.write('3');// second at 180 degrees
    port.write('5');//third finger at 180 degrees
    port.write('7');//fourth finger at 180 degrees
    port.write('9');//fifth finger at 180 degrees
     
     pictures[0] = false;
     pictures[1] = false;
     pictures[2] = false;
     pictures[3] = false;
     pictures[4] = false;
     pictures[6] = false;
     pictures[7] = false;
     pictures[8] = false;
     pictures[9] = false;
     pictures[10] = false;
  }
  else if(commandButtons[6].mouseOver()){
     pictures[6] = !pictures[6];
     timeStart = millis();
     
     
     pictures[0] = false;
     pictures[1] = false;
     pictures[2] = false;
     pictures[3] = false;
     pictures[4] = false;
     pictures[5] = false;
     pictures[7] = false;
     pictures[8] = false;
     pictures[9] = false;
     pictures[10] = false;
  }
  else if(commandButtons[7].mouseOver()){
     pictures[7] = !pictures[7]; 
     rps = int (random(0, 3));// picking the rock paper or scissors number/image
     pictures[0] = false;
     pictures[1] = false;
     pictures[2] = false;
     pictures[3] = false;
     pictures[4] = false;
     pictures[5] = false;
     pictures[6] = false;
     pictures[8] = false;
     pictures[9] = false;
     pictures[10] = false;
  }
   else if(commandButtons[8].mouseOver()){
     pictures[8] = !pictures[8];
    port.write('1');// first at 0 degrees
    port.write('2');// second at 0 degrees
    port.write('4');//third finger at 0 degrees
    port.write('6');//fourth finger at 0 degrees
    port.write('8');//fifth finger at 0 degrees
     
     
     pictures[0] = false;
     pictures[1] = false;
     pictures[2] = false;
     pictures[3] = false;
     pictures[4] = false;
     pictures[5] = false;
     pictures[6] = false;
     pictures[7] = false;
     pictures[9] = false;
     pictures[10] = false;
   }
   else if(commandButtons[9].mouseOver()){
     pictures[9] = !pictures[9];
     port.write('1');// first at 180 degrees
    port.write('2');// second at 0 degrees
    port.write('4');//third finger at 0 degrees
    port.write('7');//fourth finger at 180 degrees
    port.write('8');//fifth finger at 0 degrees
     
     pictures[0] = false;
     pictures[1] = false;
     pictures[2] = false;
     pictures[3] = false;
     pictures[4] = false;
     pictures[5] = false;
     pictures[6] = false;
     pictures[7] = false;
     pictures[8] = false;
     pictures[10] = false;
   }
    else if(commandButtons[10].mouseOver()){
     pictures[10] = !pictures[10];
    port.write('1');// first at 180 degrees
    port.write('2');// second at 0 degrees
    port.write('4');//third finger at 0 degrees
    port.write('6');//fourth finger at 0 degrees
    port.write('9');//fifth finger at 180 degrees
     
     
     pictures[0] = false;
     pictures[1] = false;
     pictures[2] = false;
     pictures[3] = false;
     pictures[4] = false;
     pictures[5] = false;
     pictures[6] = false;
     pictures[7] = false;
     pictures[8] = false;
     pictures[9] = false;
   }
}
