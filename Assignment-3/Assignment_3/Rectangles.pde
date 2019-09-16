class Rectangles
{
  private int x;
  private int y;
  private int w;
  private int h;
  
  private int r;
  private int g;
  private int b;
  private int dist = 5;
  
  
  //constructor
public Rectangles(int x, int y, int w, int h, int r, int g, int b)
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
  fill(r,g,b);
  rect(x,y,w,h);
}

}
