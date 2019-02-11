#include <Servo.h>
Servo myServo1;
Servo myServo2;
Servo myServo3;
Servo myServo4;
Servo myServo5;
//int buttonPin = 12;
//int buttonState = 180;//Creating variable
int angle_one = 0;//angle for finger 1 pinky
int angle_two = 0;//angle for finger 2 ring 
int angle_three = 0;//angle for finger 3 middle
int angle_four = 0;//angle for finger 4 index
int angle_five = 0;// angle for finger 5 thumb




void setup(){
// pinMode(buttonPin,INPUT);
 pinMode(3,OUTPUT);
 pinMode(4,OUTPUT);
 pinMode(5,OUTPUT);
 pinMode(9,OUTPUT);
 pinMode(10,OUTPUT);
  myServo1.attach(4);
  myServo2.attach(5);
  myServo3.attach(2);
  myServo4.attach(11);
  myServo5.attach(12);
 Serial.begin(9600);//Initializing the serial port
}

void loop(){

   if(Serial.available()>0){  // this goes around all your LED instructions
    char servoState = Serial.read(); // read from the serial port ONLY ONCE
   
    if(servoState == '0'){               //pinky up 
        //digitalWrite(redLED, HIGH); 
        angle_one = 0;
      }
     if(servoState == '1'){                // pinky down  
        //digitalWrite(redLED, LOW)
        angle_one = 180;
      }
      if(servoState == '2'){    //ring finger up 
        angle_two = 0;
        
      }
      if(servoState == '3'){// ring finger down
        angle_two = 180;
      }
      if(servoState == '4'){// middle finger up 
        angle_three = 0;
      }
      if(servoState == '5'){// middle finger down
        angle_three = 180;
      }
      if(servoState =='6'){//index up
        angle_four = 0;
      }
      if(servoState == '7'){//index down 
        angle_four = 180;
      }
      if(servoState == '8'){// thumb up 
        angle_five = 0;
      }
      if(servoState == '9'){// thumb down
        angle_five = 180;
      }
   }// end serial available
    //      buttonState=digitalRead(buttonPin);//Reading pin connected to the pushbutton
   //   if(buttonState == LOW){
  //button is not pressed
  //angle=0;
  
//    }else {
//      //if button is pressed
//      angle = 180;
//     }
    myServo1.write(angle_one);
    myServo2.write(angle_two);
    myServo3.write(angle_three);
    myServo4.write(angle_four);
    myServo5.write(angle_five);
    
    delay(15);
  }
