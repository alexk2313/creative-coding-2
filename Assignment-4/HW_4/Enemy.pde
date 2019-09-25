class Enemy
{
  private int x;
  private int y;
  private int diameter;
  private int r;
  private int g;
  private int b;
  private int xSpeed;
  private int ySpeed;
 
  
  
  
  //constructor******************
public Enemy(int x, int y, int diameter, int r, int g, int b, int xSpeed, int ySpeed)
  {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.r = r;
    this.g = g;
    this.b = b;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }
  //methods****************
  void draw()
  {
    fill(r,g,b);
    circle(x,y,diameter);
  }
  
  
  
  
  
  //*************Making circles bounce off walls********************
  void updateX()
  {
    if((x-diameter/2) <= 0 || (x+diameter/2) >= width)
    {
    xSpeed *= -1;
    }
     x += xSpeed;
  }
  
   
   
   void updateY()
  {
    if((y-diameter/2) <= 0 || (y+diameter/2) >= width)
    {
    ySpeed *= -1;
    }
    y += ySpeed;
  }
  




}
