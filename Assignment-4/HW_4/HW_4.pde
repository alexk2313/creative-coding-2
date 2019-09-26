Player myPlayer = new Player(200,200,50,50,0,0,255);
Enemy[] myEnemy = new Enemy[5];
Timer myTime;
void setup()
{
  size(1000,1000);
  
  for(int i = 0; i < myEnemy.length; i++)
  {
    myEnemy[i] = new Enemy((int)random(200,800),(int)random(200,800),(int)random(50,100),(int)random(200,255),
    (int)random(0,50),(int)random(0,50),(int)random(2,5),(int)random(2,5));
  }
  myTime = new Timer();
 
}

void draw()
{
  background(0);
  for(int i = 0; i < myEnemy.length; i++)
  {
    // if (myTime.timer())
    //{
    //  myEnemy.push new Enemy((int)random(200,800),(int)random(200,800),(int)random(50,100),(int)random(200,255),
    //(int)random(0,50),(int)random(0,50),(int)random(2,5),(int)random(2,5));
    //}
    
    
    myEnemy[i].draw();
    myEnemy[i].updateXSpeed();
    myEnemy[i].updateYSpeed();
    //myEnemy[i].mousePressed();
   
  }
  
  myPlayer.draw();
  myPlayer.updateXSpeed();
  myPlayer.updateYSpeed();
}





//*************checking collision between enemies************

//void checkCollisions(Enemy myEnemy)
//{
//  for (int i = 0; i < myEnemy.length; i++)
//  {
//    if (myEnemy != myEnemy[i])
//    {
//      if (myEnemy.checkCollision(myEnemy[i].getX(), myEnemy[i].getY(), myEnemy[i].getDiameter()))
//      {
//        myEnemy.alterXSpeed();
//        myEnemy.alterYSpeed();
//        myEnemy[i].alterXSpeed();
//        myEnemy[i].alterYSpeed();
//      }
//    }
//  }
//}
