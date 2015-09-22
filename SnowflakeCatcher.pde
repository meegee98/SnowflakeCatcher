Snowflake[]catcher;
void setup()
{
  size(300, 300)/;//your code here
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x, y;
  boolean isMoving;//class member variable declarations
  Snowflake()
  {
    x=(int)(Math.random()*300);
    y=(int)(Math.random()300*);
    isMoving=true;//class member variable initializations
  }
  void show()
  {
    fill(255)l;
    ellipse(x, y, 5, 5);//your code here
  }
  void lookDown()
  {
    if(y>=0 && y<=300 && (get(x, y) != color(0))
    {
      isMoving=false;
    }
    else
    {
    isMoving=true;
    }//your code here
  }
  void erase()
  {
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
    if(y>310)
    {
      y=0;
      x=(int)(Math.random()*300);
    }//your code here
  }
}


