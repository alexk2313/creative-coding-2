class Player
{
  private int x;
  private int y;
  private int w;
  private int h;
  private int r;
  private int g;
  private int b; 
 
  
  //constructor
public Player(int x, int y, int w, int h, int r, int g, int b)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
  void draw()
{
  fill(r,g,b);
  rect(x,y,w,h);
}





//********** creating keypressed movement ***********************
void updateY()
{
  if(key == 's')
  {
    y += 5;
  }
  
    if(key == 'w')
  {
    y -= 5;
  }
}

void updateX()
{
    if(key == 'd')
  {
    x += 5;
  }
  
    if(key == 'a')
  {
    x -= 5;
  }
}
}
