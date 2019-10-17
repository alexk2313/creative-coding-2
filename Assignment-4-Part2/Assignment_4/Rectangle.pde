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
  
void keyPressed()
{
  //********************trying to get movement**************************
  //if(key == 'w')
  //{
  //  y -= 7;
  //}
  //  if(key == 's')
  //{
  //  y += 7;
  //}
  //  if(key == 'a')
  //{
  //  x -= 7;
  //}
  //  if(key == 'd')
  //{
  //  x += 7;
  //}
  
  //if(x > width - w)
  //{
  //  x = 0;
  //}
  //if(x < 0)
  //{
  //  x = width - w;
  //}
  //if(y > height - h)
  //{
  // y = 0;
  //}
  //  if(y < 0)
  //{
  // y = height - h;
  //}
  
  image(mouseImage, x, y);
}
  
}
