class Rectangle
{
  private int x;
  private int y;
  private int w;
  private int h;
  private int r;
  private int g;
  private int b;
  
  
  //constructor
public Rectangle(int x, int y, int w, int h, int r, int g, int b)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
void keyPressed()
{
  if(key == 'w')
  {
    y -= 5;
  }
    if(key == 's')
  {
    y += 5;
  }
    if(key == 'a')
  {
    x -= 5;
  }
    if(key == 'd')
  {
    x += 5;
  }
  
  if(x > width - w)
  {
    x = 0;
  }
  if(x < 0)
  {
    x = width - w;
  }
  if(y > height - h)
  {
   y = 0;
  }
    if(y < 0)
  {
   y = height - h;
  }
  
  
  



  r = (int)random(256);
  fill(r,g,b);
  rect(x,y,w,h);
}
  
}
