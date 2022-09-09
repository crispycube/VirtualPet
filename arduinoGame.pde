import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int x = 450;
int yRect = -200;
int xRect1 = (int)(Math.random()*200) + 50;
int xRect2 = (int)(Math.random()*200) + 550;
int round = 1;
int speed = 1;
boolean gameEnd = false;

public void setup() {
  size(1000, 1000);
  noStroke();
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
  rect(x, 700, 50, 50); //the thing the player controls

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
  rect(xRect1, yRect, 200, 200);
  rect(xRect2, yRect, 200, 200);
  yRect += speed;
  
  if(yRect > 1000){
    roundEnd = true;
    yRect = -200;
    round += 1;
    xRect1 = (int)(Math.random()*200) + 50;
    xRect2 = (int)(Math.random()*200) + 550;
    rect(xRect1, yRect, 200, 200);
    rect(xRect2, yRect, 200, 200);
  }
  
  
  textSize(16);
  text("Round: " + round, 20, 20);
  text("Speed Multiplier: " + speed + "x", 20, 40);
  if(roundEnd == true) {
    speed += 1;
  }
  //color = 
  
  System.out.println(get(520, 720));
  
  if(get(x, 700) != -14819247) || get(x,  )
  
  if(gameEnd == true){
    background(192);
    textSize(300);
    text("Good Game", 500, 500);
  }
  
}
