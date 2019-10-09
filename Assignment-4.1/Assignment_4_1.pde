int red = 0;
Rectangle myRect1= new Rectangle(400,400,100,100,50,0,0); 
Circle[] myCircles = new Circle[50];
Image myImage;
void setup()
{
  size(1000,1000);
  myImage = new Image();
  for( int i = 0; i < myCircles.length; i++)
  {
    myCircles[i] = new Circle( (int)random(500,800), (int)random(500,800), (int)random(25,50), 0,(int)random(0,255),0);
  }
}

void draw()
{
  background(0);
  myRect1.keyPressed();
  for( int i = 0; i < myCircles.length; i++)
  {
    myCircles[i].doSomething();
  }
  myImage.draw();
}
