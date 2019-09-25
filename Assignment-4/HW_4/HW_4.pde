Player myPlayer = new Player(200,200,50,50,0,0,255);
Enemy[] myEnemy = new Enemy[5];

void setup()
{
  size(1000,1000);
  
  for(int i = 0; i < myEnemy.length; i++)
  {
    myEnemy[i] = new Enemy((int)random(200,800),(int)random(200,800),(int)random(50,100),(int)random(200,255),
    (int)random(0,50),(int)random(0,50),(int)random(2,5),(int)random(2,5));
  }
 
}

void draw()
{
  background(0);
  for(int i = 0; i < myEnemy.length; i++)
  {
    myEnemy[i].draw();
    myEnemy[i].updateX();
    myEnemy[i].updateY();
  }
  
  myPlayer.draw();
  myPlayer.updateX();
  myPlayer.updateY();
}
