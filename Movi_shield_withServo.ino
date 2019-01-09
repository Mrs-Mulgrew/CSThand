

#include <MOVIShield.h>
#include <Servo.h>


Servo myServo;
//int const potPin = A0;
//int potVal;
int angle = 0;

int led = 13;
MOVI recognizer(true);

void setup() {
  // put your setup code here, to run once:
  
  myServo.attach(9);
  
  
  pinMode(led, OUTPUT);
   pinMode(11, OUTPUT);
  recognizer.init();
  recognizer.setVoiceGender(true);
  recognizer.callSign(F("Catalina"));

  
  recognizer.addSentence(F(" Hello"));//1
  recognizer.addSentence(F("Let there be light"));//2
  recognizer.addSentence(F("Let there be darkness"));//3
  recognizer.addSentence(F("How old are you"));//4
  recognizer.addSentence(F("Goodbye"));//5
  recognizer.addSentence(F("Move your Finger"));//6
  //recognizer.addSentence(F("Peace be with you")//5
 // recognizer.addSentence(F(
  recognizer.train();
//  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int res = recognizer.poll();
//  potVal = analogRead(potPin);
//   Serial.print("potVal: ");
//   Serial.print(potVal);
  
  if(res == 1){
    recognizer.say("Hello, My name is Eva.");
  }

  if(res == 2){
   recognizer.say("And there was light.");
    digitalWrite(led, HIGH);
    delay(1000);
  }


 if(res == 3){
    recognizer.say("And there was darkness");
     digitalWrite(led, LOW);
    delay(1000);
  }


  if(res == 4){
    recognizer.say("I am ageless. I will live forever");
  }
   
  if(res == 5){
    recognizer.say("Goodbye human");
  }

  if(res == 6){
    recognizer.say("You don't control me, but alright");
//   angle = map(potVal, 0, 1032, 0, 179);
//   Serial.print(", angle: ");
//   Serial.println(angle);
//      myServo.write(angle);
//      delay(1000);
    angle = 180;
  }

  myServo.write(angle);
      delay(1000);
}
