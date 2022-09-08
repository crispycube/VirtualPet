import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(1000, 1000);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  for(int i = 0; i < 16; i++)
    System.out.print(i+" "+arduino.analogRead(i) + "\t");
  System.out.println();

  boolean left;
  boolean right; //do this stuff later

  int x = 500;
  int y = 950;
  
  fill(#1de051);
  rect(x, y, 100, 100); //the thing the player controls

  while(left){
    x -= 1;
  }
  while(right){
    x += 1;
  }
   
  fill(0);
  for(int i = 0; i < 4; i++){
    rect()
  }

}
