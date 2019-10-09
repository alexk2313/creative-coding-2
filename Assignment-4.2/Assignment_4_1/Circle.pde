class Circle
{
  private int x;
  private int y;
  private int diameter;
  private int r;
  private int g;
  private int b;
  private int xDist = (int)random(1,6);
  private int yDist = (int)random(1,6);
  
  
  //constructor
public Circle(int x, int y, int diameter, int r, int g, int b)
  {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
void doSomething()
{
  x+= xDist; 
  y+= yDist;
  
  
  if(x < 0 + diameter/2 || x > width - diameter/2)
  {
    xDist *= -1;
  }
    if(y < 0 + diameter/2 || y > height - diameter/2)
  {
    yDist *= -1;
  }



  fill(r,g,b);
  circle(x,y,diameter);
}
  
}
