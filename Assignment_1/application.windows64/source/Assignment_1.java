import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Assignment_1 extends PApplet {

int borderStroke = 5;

public void setup()
{ 
  
}

public void draw()
{
  background(0xff21FF00);
  
  //creating border (found on processing forums)
  int twoBS = borderStroke*2;
  fill(0xff000000);
  rect(borderStroke, borderStroke, width-twoBS, height-twoBS);
  
  fill(0xffFF0808);
  arc(400,250,200,200, PI - QUARTER_PI, 2*PI + QUARTER_PI);
  
  fill(0xffFF39FC);
  arc(400,325,200,200, PI - QUARTER_PI, 2*PI + QUARTER_PI);
  
  fill(0xff00E3FF);
  arc(400,400, 200, 200, PI, PI + PI);
  
  fill(0xffFFEC81);
  triangle(400, 700, 300, 400, 500, 400);
  

  line(375, 400, 500, 480);
  line(300, 400, 465, 500);
  line(310, 450, 455, 535);
  line(315, 500, 445, 570);
  line(325, 550, 435, 615);
  
  textSize(32);
  fill(0xffFFFCFC);
  text("Alex Killian", 575,750);
  text("NEON CREAM", 50,100);
  
}
  public void settings() {  size(800,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Assignment_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
