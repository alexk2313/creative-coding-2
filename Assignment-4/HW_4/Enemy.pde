class Enemy
{
  private int x;
  private int y;
  private int diameter;
  private int r;
  private int g;
  private int b;
  private int xSpeed;
  private int ySpeed;
 
  
  
  
  //*************constructor******************
public Enemy(int x, int y, int diameter, int r, int g, int b, int xSpeed, int ySpeed)
  {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.r = r;
    this.g = g;
    this.b = b;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }
  void draw()
  {
    fill(r,g,b);
    circle(x,y,diameter);
  }
  
 
  
  
  
  //**************altering direction************
  void alterYSpeed()
  {
    ySpeed *= -1;
  }

  void alterXSpeed()
  {
    xSpeed *= -1;
  }
  
  
  
  
  
  //**********************retreiving parameters*********************
  int getX()
  {
    return x;
  }

  int getY()
  {
    return y;
  }

  int getDiameter()
  {
    return diameter;
  }
  
  
  
  
  
  
  //*************Making circles bounce off walls********************
  void updateXSpeed()
  {
    if((x-diameter/2) <= 0 || (x+diameter/2) >= width)
    {
    xSpeed *= -1;
    }
     x += xSpeed;
  }
  
   
   
   void updateYSpeed()
  {
    if((y-diameter/2) <= 0 || (y+diameter/2) >= width)
    {
    ySpeed *= -1;
    }
    y += ySpeed;
  }
  

//*******************collision******** 
 //boolean checkCollision(int x1, int y1, int diameter1)
 // {
 //   // get the distance between the two centers of the
 //   // circles and then compare that to the distances of the
 //   // two radiuses.  If the distance is smaller, we assume they 
 //   // have collided
 //   if (dist(x, y, x1, y1) < diameter/2 + diameter1/2) {
 //     return true;
 //   } else
 //   {  
 //     return false;
 //   }
 // }
  


//***********mouse click to remove*****************
//void mousePressed()
//{
//  if(mouseX >= x + diameter/2 && mouseX <= x + diameter/2 && mouseY >= y + diameter/2 && mouseY <= y + diameter/2)
//  {
//    g = 255;
//  }
  
//}

}
