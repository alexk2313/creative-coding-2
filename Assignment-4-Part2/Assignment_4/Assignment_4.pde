PImage rockImage;
Rock myRock;
ArrayList<Rock> myRockArrayList;
int x = 0;
int y = 0;
int xPlayer = 500;
int yPlayer = 500;


Rectangle myRect1; 

Circle[] myCircles = new Circle[5];
String[] images = {"kitten.jpg", "foldCat.jpg"}; 



void setup()
{
  size(1000,1000);
  //****************adding rock border*****************
  String[] borderCoord = loadStrings("border.txt");
  myRockArrayList = new ArrayList<Rock>();
  rockImage = loadImage("rock.jpg");
 
  
  for( int i= 0; i < borderCoord.length; i ++)
  {
    String[] line = borderCoord[i].split(",");
    for(int j = 0; j < line.length; j++)
    {
     
      if(Integer.parseInt(line[j]) == 1)
      {
         myRock = new Rock(x,y,rockImage);
         myRockArrayList.add(myRock);
      }
      x += 100;
    }
      y += 100;
      x = 0;
  }

  
  //************ adding enemy**************
  for( int i = 0; i < myCircles.length; i++)
  {
    myCircles[i] = new Circle( (int)random(500,800), (int)random(500,800), images[(int)random(2)], 50,50);
  }
  
  //*********** adding player***************
  myRect1 = new Rectangle(xPlayer,yPlayer,"mouse.jpg",50,50);
}





void draw()
{
  background(0);
 
  
   //Rocks
  for(int i = 0; i < myRockArrayList.size(); i++)
  {
    myRockArrayList.get(i).draw();
  }
 
  
  //player
  myRect1.draw(xPlayer, yPlayer);
  
  
  //enemies
  for( int i = 0; i < myCircles.length; i++)
  {
    myCircles[i].doSomething();
  }

}

//void keyPressed()
//{
//  //********************trying to get movement**************************
//  if(key == 'w')
//  {
//    yPlayer -= 5;
//  }
//    if(key == 's')
//  {
//    yPlayer += 5;
//  }
//    if(key == 'a')
//  {
//    xPlayer -= 5;
//  }
//    if(key == 'd')
//  {
//    xPlayer += 5;
//  }
  
//  if(xPlayer > width - 50)
//  {
//    xPlayer = 0;
//  }
//  if(xPlayer < 0)
//  {
//    xPlayer = width - 50;
//  }
//  if(yPlayer > height - 50)
//  {
//   yPlayer = 0;
//  }
//    if(yPlayer < 0)
//  {
//   yPlayer = height - 50;
//  }
//}
