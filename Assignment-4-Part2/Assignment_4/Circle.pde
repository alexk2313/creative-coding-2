class Circle
{
  private int x;
  private int y;
  private String imagePath;
  private PImage kittenImage;
  private int w;
  private int h;
  private int xDist = (int)random(1,6);
  private int yDist = (int)random(1,6);
  
  
  //constructor
public Circle(int x, int y, String imagePath, int w, int h)
  {
    this.x = x;
    this.y = y;
    this.imagePath = imagePath;
    this.w = w;
    this.h = h;
    kittenImage = loadImage(imagePath);
    kittenImage.resize( h, w );
  }
  
void doSomething()
{
  x+= xDist; 
  y+= yDist;
  
  
  if(x < 0 + 100  || x > width - w - 100)
  {
    xDist *= -1;
  }
    if(y < 0 + 100 || y > height - h - 100)
  {
    yDist *= -1;
  }

 image(kittenImage, x, y);


}
  
}
