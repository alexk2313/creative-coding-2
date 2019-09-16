Rectangles[] rects = new Rectangles[5];
Circles[] circs = new Circles[5];

int borderStroke = 5;
int count = 0;

void setup()
{
  size(1000,1000);
  
  
}

void draw()
{

  background(255);
  int twoBS = borderStroke*2;
  fill(#000000);
  rect(borderStroke, borderStroke, width-twoBS, height-twoBS);

}
