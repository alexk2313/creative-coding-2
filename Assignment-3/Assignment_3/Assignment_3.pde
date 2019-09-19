Rectangles[] rects = new Rectangles[5];
Circles[] circs = new Circles[5];

int borderStroke = 5;
int count = 0;

void setup()
{
  size(1000,1000);
  for(int i = 0; i < rects.length; i++)
{
  rects[i] = new Rectangles((int)random(200,800), (int)random(200,800), (int)random(200,400), (int)random(200,400), 255, 0 ,0);
}
for(int i = 0; i < rects.length; i++)
{
  circs[i] = new Circles((int)random(200,800), (int)random(200,800), (int)random(200,400), 0, 255, 0);
}
  
}

void draw()
{

  background(255);
  int twoBS = borderStroke*2;
  fill(#000000);
  rect(borderStroke, borderStroke, width-twoBS, height-twoBS);

    for(int i = 0; i < rects.length; i++)
{
  rects[i].doSomething();  
}
for(int i = 0; i < rects.length; i++)
{
  circs[i].doSomething();
}
}
