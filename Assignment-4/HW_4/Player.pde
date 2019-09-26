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

//setting bounds and movement for y
void updateYSpeed()
{
  if(key == 's')
  {
    y += 5;
  }
  
    if(key == 'w')
  {
    y -= 5;
  }
  if(y > height)
  {
    y = 0;
  }
    if(y < 0)
  {
    y = height;
  }
}

//setting bounds and movement for x
void updateXSpeed()
{
    if(key == 'd')
  {
    x += 5;
  }
  
    if(key == 'a')
  {
    x -= 5;
  }
      if(x < 0)
  {
    x = width;
  }
      if(x > width)
  {
    x = 0;
  }
}
}
