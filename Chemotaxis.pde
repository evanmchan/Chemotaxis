Bacteria [] colony;
void setup() 
{  
  size(700, 700);
  colony = new Bacteria[5];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}   
void draw()   
{    
  for(int i = 0; i < colony.length; i++)
  {
    colony[i].walk();
    colony[i].show();
  }
} 
void mousePressed()
{
  redraw();
}
class Bacteria  
{  
  int myX, myY, num;
  Bacteria()
  {
    myX = myY = mouseX;
  }
  void walk()
  {
    if (mouseX > myX){
      myX = myX + ((int)(Math.random()*3));
    }
    else 
    {
      myX = myX + ((int)(Math.random()*3)-3);
    }
    if (mouseY > myY){
      myY = myY + ((int)(Math.random()*3));
    }
    else 
    {
      myY = myY + ((int)(Math.random()*3)-3);
    }
  }
  void changeColor()
  {
    num = ((int)(Math.random())*255);
  }
  void show()
  {
    fill(num);
    ellipse(myX, myY, 35, 35);
  }
}    
