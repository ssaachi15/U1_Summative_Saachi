

class Snowflake
{
  // member variables
  float x;
  float y;
  float w;
  float h;






  // Default constructor 
  Snowflake()
  {
    // Here i am directing the computer to randomly place the circles in certain restrictions as described in the bracket.
    x=random(0, 800);
    y=random(0, 800);
    w=random(3, 7);
    h=random(3, 7);
  }

  void Render()
  {
    // Here I am establising my circle and it's color
    fill(255, 255, 255);
    ellipse(x, y, w, h);
  }

  // I then did the same thing for my leaves
  void Renderleaf()
  {
    image(leaf, x, y, 20, 20);
  }
  void Move()
  {
    // Here I am directing the computer to move the snowballs by their coordinates
    x=x+0.25;
    y=y+2.25;
    // Here I am placing a condition that says if the snowball has reached the ground, it will start again at the top
    if (y>height)
    {
      y=0;
      x=random(0, 800);
    }
  }
}
