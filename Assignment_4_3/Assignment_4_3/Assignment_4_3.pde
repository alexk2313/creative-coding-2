PImage rockImage;
Rock myRock;
ArrayList<Rock> myRockArrayList;

String[] idleImages;
PImage[] myIdleImages = new PImage[6];

String[] walkImages;
PImage[] myWalkImages = new PImage[6];

String[] attackImages;
PImage[] myAttackImages = new PImage[6];

String[] enemyImages;
PImage[] myEnemyImages = new PImage[6];

ArrayList<Enemy> myEnemies = new ArrayList<Enemy>();

int i = 0;
int x = 100;
int y = 300;
int borderX = 0;
int borderY = 0;

int playerWidth = 50;
int playerHeight = 75;
int health = 6;

int enemyWidth = 50;
int enemyHeight = 75;

int borderWidth = 50;
int borderHeight = 50;


boolean isWalking = false;
boolean isIdle = true;
boolean isAttacking = false;

Enemy myEnemy;
Enemy myEnemy2;
Enemy myEnemy3;

void setup()
{
    //****************adding rock border*****************
  String[] borderCoord = loadStrings("border.txt");
  myRockArrayList = new ArrayList<Rock>();
  rockImage = loadImage("Tile.png");
  for( int i= 0; i < borderCoord.length; i ++)
  {
    String[] line = borderCoord[i].split(",");
    for(int j = 0; j < line.length; j++)
    {
     
      if(Integer.parseInt(line[j]) == 1)
      {
         myRock = new Rock(borderX,borderY,rockImage);
         myRockArrayList.add(myRock);
      }
      borderX += 50;
    }
      borderY += 50;
      borderX = 0;
  }

 
  enemyImages = loadStrings("/data/enemy/Walk.txt");
  idleImages = loadStrings("Idle.txt");
  walkImages = loadStrings("Walk.txt");
  attackImages = loadStrings("Attack.txt");
  
  size(1000,500);
  createAllAnimationArrays(); 
  frameRate(20);
}  




void draw()
{
  background(0);
  displayAnimation();
  for(int i = 0; i < myRockArrayList.size(); i++)
  {
    myRockArrayList.get(i).draw();
  }
  textSize(30);
  fill(0, 102, 153, 204);
  text("Health: " + health, 100,100);
  if(health <= 0){
     health = 0;
     textSize(150);
     fill(255,0,0);
     text("Game Over", 100,300);
     
 }  
  if(x > width)
       {
         textSize(150);
         fill(0,255,0);
         text("You Win!", 100,300);
       }
   
}




//***************************************************************************
void createAllAnimationArrays()
{
 for(int i = 0; i < myIdleImages.length;i++)
  {
     
     myIdleImages[i] = loadImage(idleImages[i]);
     myIdleImages[i].resize(75,50);
     myWalkImages[i] = loadImage(walkImages[i]);
     myWalkImages[i].resize(75,50);
     myAttackImages[i] = loadImage(attackImages[i]);
     myAttackImages[i].resize(75,50);
     myEnemyImages[i] = loadImage("/data/enemy/" + enemyImages[i]);
     myEnemyImages[i].resize(75,50);
  }
     myEnemy = new Enemy(myEnemyImages,800,300);
     myEnemies.add(myEnemy);
     myEnemy2 = new Enemy(myEnemyImages,600,300);
     myEnemies.add(myEnemy2);
     myEnemy3 = new Enemy(myEnemyImages,400,300);
     myEnemies.add(myEnemy3);

}








//************************************************************************
void displayAnimation()
{
   if(isIdle)
   {
     image(myIdleImages[i], x,y);
   }
   if(isAttacking)
   {
     image(myAttackImages[i],x,y);
   }
   else if(isWalking)
   {
     image(myWalkImages[i],x,y); 
   }
   
   for(int j = 0; j < myEnemies.size(); j++)
   {
     myEnemies.get(j).draw(i);
   }
   
   i++;
   if(i == 6)
   {
      i = 0; 
   } 
}

//***************************************************************************
void keyPressed()
{
   
   if(key == 'd')
   {
       x+=10;
       isIdle = false;
       isWalking = true;
      
       
       
       //***************checking collision with enemy***********
       for(int j = 0; j < myEnemies.size(); j++)
       {
       if(checkCollision(x+ playerWidth, myEnemies.get(j).getX(), x, myEnemies.get(j).getX() + enemyWidth,
       y+playerHeight, myEnemies.get(j).getY(), y, myEnemies.get(j).getY() + enemyHeight))
       {
           health -= 1;
           
       }
       else
       {
          println("Free!"); 
       }
       }
       //**********checking collision with wall****************
        for(int i = 0; i < myRockArrayList.size(); i++)
       {
     
       if(checkCollision(x+ playerWidth, myRockArrayList.get(i).getX(), x, myRockArrayList.get(i).getX() + borderWidth,
       y+playerHeight, myRockArrayList.get(i).getY(), y, myRockArrayList.get(i).getY() + borderHeight))
       {
           x-=10;
       }
       else
       {
          println("Free!"); 
       }
  }
   }
   if(key == ' ')
   {
      isIdle = false;
      isAttacking = true;
      //***************checking collision with enemy***********
   for(int j = 0; j < myEnemies.size(); j++)
       {
       if(checkCollision(x+ playerWidth, myEnemies.get(j).getX(), x, myEnemies.get(j).getX() + enemyWidth,
       y+playerHeight, myEnemies.get(j).getY(), y, myEnemies.get(j).getY() + enemyHeight))
       {
           myEnemies.remove(j);
           
       }
       else
       {
          println("Free!"); 
       }
       }
       
   }
   
   
}




void keyReleased()
{
   isIdle = true;
   isWalking = false;
   isAttacking = false;
}




boolean checkCollision(int rectOneRight, int rectTwoLeft,
int rectOneLeft, int rectTwoRight, int rectOneBottom, int rectTwoTop,
int rectOneTop, int rectTwoBottom)
{
   //evaluates to true if rectOne and rectTwo are colliding
  if(rectOneRight > rectTwoLeft 
  && rectOneLeft < rectTwoRight 
  && rectOneBottom > rectTwoTop 
  && rectOneTop < rectTwoBottom)
  {
    return true;
  }
  else
  {
      return false;
  }
}
