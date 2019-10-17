 class Rock
{
  private int x;
  private int y;
  private PImage rockImage;

  
  
  //constructor
public Rock(int x, int y, PImage rockImage)
  {
   this.x = x;
   this.y = y;
   this.rockImage = rockImage;
   rockImage.resize(100,100);
   
  }
  
void draw()
{
  image(rockImage, x, y);
}
  
}
