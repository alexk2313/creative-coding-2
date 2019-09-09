class MyCircle
{
  private int x;
  private int y;
  private int rad;
  
  private int r;
  private int g;
  private int b;
  private int dist = 5;
  
  
  //constructor
public MyCircle(int x, int y, int rad, int r, int g, int b)
  {
    this.x = x;
    this.y = y;
    this.rad = rad;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
void doSomething()
{
  
  x+= dist; 
  y+= dist;
  if(x < 0 || x > 800)
  {
    dist *= -1;
  }
    if(y < 0 || y > 800)
  {
    dist *= -1;
  }

  
  r = (int)random(256);
  g = (int)random(256);
  b = (int)random(256);
  fill(r,g,b);
  circle(x,y,rad);
}

//void changeColor()
//{
//  r = (int)random(256);
//  g = (int)random(256);
//  b = (int)random(256);
//  fill(r,g,b);
//}

  
}
