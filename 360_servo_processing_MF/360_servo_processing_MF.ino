#include <Servo.h>
Servo myServo1;// 
Servo myServo2;
Servo myServo3;
Servo myServo4;
Servo myServo5;
int switchState = 0;


void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT);
  pinMode(5, OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);
  
  myServo1.attach(8);
  myServo1.write(90);
  myServo2.attach(7);
  myServo2.write(90);
  myServo3.attach(4);
  myServo3.write(90);
  myServo4.attach(3);
  myServo4.write(90);
  myServo5.attach(6);
  myServo5.write(90);
  Serial.begin(9600);//Initializing the serial port



}

void loop() { 
    if(Serial.available()>0){  //intializes servo 
        char servoState = Serial.read(); // read from the serial port ONLY ONCE

    
  if(servoState == '0'){  //all fingers down

    myServo1.write(160);
    myServo2.write(130);
    myServo3.write(130);
    myServo4.write(180);
    myServo5.write(130);
    delay(1200);
 
    myServo1.write(120);
    myServo2.write(120);
    myServo3.write(120);
    myServo4.write(120);
    myServo5.write(120);
    delay(6000);
    myServo1.write(32);
    myServo2.write(32);
    myServo3.write(32);
    myServo4.write(32);
    myServo5.write(35);
    delay(670);
    myServo1.write(90);
    myServo2.write(90);
    myServo3.write(90);
    myServo4.write(90);
    myServo5.write(90);

  
    
  }

  if(servoState == '1'){
    myServo1.write(160);
    myServo2.write(130);
    myServo3.write(130);
    myServo5.write(130);
    delay(1200);
 
    myServo1.write(120);
    myServo2.write(120);
    myServo3.write(120);
    myServo5.write(120);
    delay(6000);
    myServo1.write(32);
    myServo2.write(32);
    myServo3.write(32);
    myServo5.write(35);
    delay(670);
    myServo1.write(90);
    myServo2.write(90);
    myServo3.write(90);
    myServo5.write(90);
    }

  if(servoState == '2'){
      myServo1.write(160);
    myServo2.write(130);;
    myServo5.write(130);
    delay(1200);
 
    myServo1.write(120);
    myServo2.write(120);
    myServo5.write(120);
    delay(6000);
    myServo1.write(32);
    myServo2.write(32);
    myServo5.write(35);
    delay(670);
    myServo1.write(90);
    myServo2.write(90);
    myServo5.write(90);
  }

   if(servoState == '3'){
    myServo1.write(160);
    myServo5.write(130);
    delay(1200);
 
    myServo1.write(120);
    myServo5.write(120);
    delay(6000);
    myServo1.write(32);
    myServo5.write(35);
    delay(670);
    myServo1.write(90);
    myServo5.write(90);
  }
  
  if(servoState == '4'){

    myServo5.write(130);
    delay(1200);
 
    myServo5.write(120);
    delay(6000);

    myServo5.write(35);
    delay(670);

    myServo5.write(90);
  }
  if(servoState == '6'){
    myServo4.write(150);
    delay(600);
    myServo4.write(70);
    delay(400);
    myServo4.write(150);
    delay(600);
    myServo4.write(70);
    delay(400);
    myServo4.write(90);
    delay(200);
  }
  if(servoState == '8'){

    myServo2.write(130);
    myServo3.write(130);
    myServo4.write(180);
    myServo5.write(130);
    delay(1200);
 
 
    myServo2.write(120);
    myServo3.write(120);
    myServo4.write(120);
    myServo5.write(120);
    delay(6000);

    myServo2.write(32);
    myServo3.write(32);
    myServo4.write(32);
    myServo5.write(35);
    delay(670);

    myServo2.write(90);
    myServo3.write(90);
    myServo4.write(90);
    myServo5.write(90);

  }
   if(servoState == '9'){

    myServo2.write(130);
    myServo3.write(130);
    myServo5.write(130);
    delay(1200);
 
 
    myServo2.write(120);
    myServo3.write(120);
    myServo5.write(120);
    delay(6000);

    myServo2.write(32);
    myServo3.write(32);
    myServo5.write(35);
    delay(670);

    myServo2.write(90);
    myServo3.write(90);
    myServo5.write(90);
    
   }
   if(servoState == 'a'){

    myServo2.write(130);
    myServo3.write(130);
    myServo4.write(180);
    delay(1200);
 

    myServo2.write(120);
    myServo3.write(120);
    myServo4.write(120);
    delay(6000);

    myServo2.write(32);
    myServo3.write(32);
    myServo4.write(32);
    delay(670);

    myServo2.write(90);
    myServo3.write(90);
    myServo4.write(90);
   }

    }// end serial.available

 


}// end v loop
