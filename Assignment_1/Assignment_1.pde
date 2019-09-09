int borderStroke = 5;

void setup()
{ 
  size(800,800);
}

void draw()
{
  background(#21FF00);
  
  //creating border (found on processing forums)
  int twoBS = borderStroke*2;
  fill(#000000);
  rect(borderStroke, borderStroke, width-twoBS, height-twoBS);
  
  fill(#FF0808);
  arc(400,250,200,200, PI - QUARTER_PI, 2*PI + QUARTER_PI);
  
  fill(#FF39FC);
  arc(400,325,200,200, PI - QUARTER_PI, 2*PI + QUARTER_PI);
  
  fill(#00E3FF);
  arc(400,400, 200, 200, PI, PI + PI);
  
  fill(#FFEC81);
  triangle(400, 700, 300, 400, 500, 400);
  

  line(375, 400, 500, 480);
  line(300, 400, 465, 500);
  line(310, 450, 455, 535);
  line(315, 500, 445, 570);
  line(325, 550, 435, 615);
  
  textSize(32);
  fill(#FFFCFC);
  text("Alex Killian", 575,750);
  text("NEON CREAM", 50,100);
  
}
