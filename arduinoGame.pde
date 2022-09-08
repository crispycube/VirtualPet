import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int x = 450;
int yRect = -500;
int points = 0;
int speed = 1;

public void setup() {
  size(1000, 1000);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);

  boolean left = false;
  boolean right = false; 
  boolean roundEnd = false;
  if(arduino.analogRead(6) > 0){
    left = true;
  }
  if(arduino.analogRead(1) > 0){
    right = true;
  }

  fill(#1de051);
  rect(x, 700, 100, 100); //the thing the player controls

  if(left){
    x -= 25;
  }
  if(right){
    x += 25;
  }
  if(x < 0){
    x = 0;
  }
  if(x > 900){
    x = 900;
  }
  
  fill(#000000);
  rect(250, yRect, 200, 500);
  rect(750, yRect, 200, 500);
  yRect += speed;
  if(yRect > 1000){
    roundEnd = true;
    yRect = -500;
    points += 1;
    rect(250, yRect, 200, 500);
    rect(750, yRect, 200, 500);
  }
  
  text("Points: " + points, 20, 20);
  text("Speed Multiplier: " + speed + "x", 20, 40);
  if((points % 5 == 0)&&(roundEnd == true)) {
    speed += 1;
  }
  
}
