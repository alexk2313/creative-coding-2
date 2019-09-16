class Circles
{
  private int x;
  private int y;
  private int rad;
  
  private int r;
  private int g;
  private int b;
  private int dist = 5;
  
  
  //constructor
public Circles(int x, int y, int rad, int r, int g, int b)
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
  fill(r,g,b);
  circle(x,y,rad);
}

}
