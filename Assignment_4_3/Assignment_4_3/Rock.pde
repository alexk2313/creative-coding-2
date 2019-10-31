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
   rockImage.resize(50,50);
   
  }
  
void draw()
{
  image(rockImage, x, y);
}



int getX()
 {
     
     return x;
 }
   
int getY()
 {
      return y; 
 }
}
