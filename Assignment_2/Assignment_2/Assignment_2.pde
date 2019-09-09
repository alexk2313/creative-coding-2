// create some shapes, use class and use arrays
MyRectangle myRect = new MyRectangle(20,20,200,200,0,0,255);
MyRectangle myRect2 = new MyRectangle(780,780,200,200,0,255,0);
MyRectangle myRect3 = new MyRectangle(300,300,200,200,255,0,0);
MyCircle myCirc = new MyCircle(500,500,200);
int borderStroke = 5;
int count = 0;

void setup()
{
  size(1000,1000);
  
  
}

void draw()
{
  background(255);
  int twoBS = borderStroke*2;
  fill(#000000);
  rect(borderStroke, borderStroke, width-twoBS, height-twoBS);
  myRect.doSomething(); 
  myRect2.doSomething();
  myRect3.doSomething();
  
  count+=10;
  
 //if(count >=1000)
 // {
   
 //   myRect.changeColor();
 //   myRect2.changeColor();
 //   myRect3.changeColor();
      
 // }
 
}
