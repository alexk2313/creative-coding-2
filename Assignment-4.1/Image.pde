class Image
{
 PImage cat;
 
 public Image()
 {
   cat = loadImage("cat.jpg");
 }
 
 void draw()
 {
   cat.resize(200,200);
   image(cat, 200, 200);
 }
 
}
