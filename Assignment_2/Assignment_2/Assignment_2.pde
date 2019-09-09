// create some shapes, use class and use arrays
MyRectangle myRect = new MyRectangle(30,100,150,10,120,50,135);
MyRectangle myRect2 = new MyRectangle(130,200,350,600,5,255,3);

int count = 0;

void setup()
{
  size(1000,1000);
  
  
}

void draw()
{
  background(0);
  count+=100;
  
  
  myRect.doSomething(); 
  myRect2.doSomething();
 if(count >=1000)
  {
 
      
  }
 
}
