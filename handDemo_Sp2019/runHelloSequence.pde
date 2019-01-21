//int timeStart;
int timer;

void runHelloSequence(int timeStart){
  //timeStart = millis();
    timer = (millis()- timeStart)/1000;
    
    println(timeStart);
    if((timer%2) == 0){
      image(closedhand, 500, 400, 0.25 * closedhand.width, 0.25 * closedhand.height);
    }else {
      image(openhand, 500, 400, 0.25 * openhand.width, 0.25 * openhand.height);
    }
}
