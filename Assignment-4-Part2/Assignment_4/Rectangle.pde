class Rectangle
{
  private int x;
  private int y;
  private String imagePath;
  private PImage mouseImage;
  private int w;
  private int h;
  
  
  //constructor
public Rectangle(int x, int y, String imagePath, int h, int w)
  {
   this.x = x;
   this.y = y;
   this.imagePath = imagePath;
   this.h = h;
   this.w = w;
   mouseImage = loadImage(imagePath);
   mouseImage.resize( h, w );
  }
  
void draw(int x, int y)
{
  
  
  image(mouseImage, x, y);
}
  
}
