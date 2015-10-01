Snowflake[] snow;
void setup()
{
  background(0);
  size(300, 300);
  snow= new Snowflake[150];
  for(int i=0; i<snow.length; i++)
  {
    snow[i]= new Snowflake();
  }
  //your code here
}
void draw()
{
  stroke(0);
  for(int i=0; i<snow.length; i++)
  {
    snow[i].erase();
    snow[i].lookDown();
    snow[i].move();
    snow[i].wrap();
    snow[i].show();
  }
  //mouseDragged();
  //your code here
}
void mouseDragged()
{
  //stroke(0,255,255, 50);
  noStroke();
  //fill(0,0,255);
  //line(mouseX, mouseY, 10, 10);
  
  fill(255, 0,0);
  //stroke(255, 0, 0);
  ellipse(mouseX, mouseY, 20, 10);
}
class Snowflake
{
  int x, y;
  boolean isMoving;//class member variable declarations
  Snowflake()
  {
    x=(int)(Math.random()*300);
    y=(int)(Math.random()*300);
    isMoving=true;//class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x, y, 5, 5);//your code here
  }
  void lookDown()
  {
    if(y>=0 && y<=300)
    {
     if((get(x+4, y+4) != color(0)))
    //&& (get(x, y) != color(0, 255, 255))) 
    {
      isMoving=false;
    }
    else
    {
    isMoving=true;
    }//your code here
  }
}
  void erase()
  {
    //fill(0, 255, 255);
    fill(0);
    ellipse(x, y, 7, 7);//your code here
  }
  void move()
  {
    if (isMoving==true)
    {
      y++;
    }//your code here
  }
  void wrap()
  {
    if(y>=296)
    {
      y=-10;
      x=(int)(Math.random()*300);
    }//your code here
  }
}



