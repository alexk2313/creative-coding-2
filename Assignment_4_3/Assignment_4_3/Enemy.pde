class Enemy
{
   PImage[] myImage;
   int x;
   int y;
   int health = 100;
   //int speed;
   int j = 0;
   
   public Enemy(PImage[] myImage, int x, int y) //,int speed)
   {
      this.myImage = myImage;
      this.x = x;
      this.y = y;
//this.speed = speed;
      
   }
   
   void draw(int i)
   {
     
     image(myImage[i],x,y);
     
   }

}
