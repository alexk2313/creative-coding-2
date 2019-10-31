class Enemy
{
   PImage[] myImage;
   int x;
   int y;
   int health = 100;
   
   int j = 0;
   
   public Enemy(PImage[] myImage, int x, int y) //,int speed)
   {
      this.myImage = myImage;
      this.x = x;
      this.y = y;

      
   }
   
   void draw(int i)
   {
     
     image(myImage[i],x,y);
     
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
