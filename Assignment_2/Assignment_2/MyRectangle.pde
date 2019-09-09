class MyRectangle
{
  private int x;
  private int y;
  private int w;
  private int h;
  
  private int r;
  private int g;
  private int b;
  private int dist = (int)random(5);
  
  
  //constructor
public MyRectangle(int x, int y, int w, int h, int r, int g, int b)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
void doSomething()
{
  if(x < 0 || x > 800)
  {
    dist *= -1;
  }
    if(y < 0 || y > 800)
  {
    dist *= -1;
  }

  x+= dist; 
  y+= dist;
  
  r = (int)random(256);
  fill(r,g,b);
  rect(x,y,w,h);
}
  
}
