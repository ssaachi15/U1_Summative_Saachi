// Here I described my variables
// I created floats in order to move my two dots and stimulate a screen change
float playerX=400;
float playerY=400;
float playerQ=400;
float playerW=400;
int Scene=1;
//Here are my pictures
PImage picnic;
PImage background;
PImage sun;
PImage person;
int X=400;
PImage speech;
PImage fall;
PImage leaf;
// This is the prep work for the snow
Snowflake snow;
int[] Grades=new int[50000];
Snowflake [] storm= new Snowflake[50000];

void setup()
{
  // Here I am clarifying what image to load when I refer to the name later in my code
  size(800, 800);
  background=loadImage("background#2.jpg");
  sun=loadImage("sun.png");
  person=loadImage("personlol.png");
  speech=loadImage("speech.png");
  leaf=loadImage("leafforfall.png");
  // I resized the image in order to make is proportionate
  speech.resize(200, 200);
  fall=loadImage("fall y'all.jpg");

  picnic=loadImage("picnic.png");
  picnic.resize(200, 200);


  snow=new Snowflake();
  //Here i am stimulating the movement of the snowballs
  for (int i=0; i<100; i++)
  {
    storm[i]=new Snowflake();
  }
  // This gets rid of the border on the snowballs
  noStroke();
}



void draw()
{
  // I am establishing my two screens, and their orders. 
  if (Scene==1)
  {
    SceneOne();
  } else if (Scene==2)
  {
    SceneTwo();
  }
}

void SceneTwo()
{
  // Here I am directing the computer to place my images in screen 2
  image(fall, 0, 0, 800, 800);
  image(picnic, 400, 600);
  // Here i copied the code from my snow array, and changed it to fall leaves.
  snow.Render();
  snow.Move();
  for (int i=0; i<100; i++)
  {
    storm[i].Renderleaf();
    storm[i].Move();
    // Here i am created my circles and coloring them

    fill(100, 0, 100);
    // here is my image
    image(leaf, playerX, playerY, 50, 50);
    fill(100, 0, 100);
    image(leaf, 100, 700, 50, 50);
    // Here I am indicating the movement for my circles by saying playerX, etc. Since playerX is defined, i am using it's starting position and then adding. 
    // Here i am deciding the distance of the leaves
    if (dist(playerX, playerY, 100, 700)<25+25);
  }
}

void SceneOne()
{
  //Here I am directing the computer to place my images in screen 1
  image(background, 0, 0, 800, 800);
  image(sun, 20, 20);
  image(person, 0, 400);
  image(speech, 250, 600);
  snow.Render();
  snow.Move();

  // Here i am created my circles and coloring them
  fill(100, 0, 100);
  ellipse(playerX, playerY, 50, 50);
  fill(100, 0, 100);
  ellipse(100, 700, 50, 50);
  // Here I am indicating the movement for my circles by saying playerX, etc. Since playerX is defined, i am using it's starting position and then adding. 
  if (dist(playerX, playerY, 100, 700)<25+25)
    snow.Render();
  snow.Move();
  for (int i=0; i<100; i++)
  {
    storm[i].Render();
    storm[i].Move();
    // Here i am created my circles and coloring them
    fill(100, 0, 100);
    ellipse(playerX, playerY, 50, 50);
    fill(100, 0, 100);
    ellipse(100, 700, 50, 50);
    // Here I am indicating the movement for my circles by saying playerX, etc. Since playerX is defined, i am using it's starting position and then adding. 
    if (dist(playerX, playerY, 100, 700)<25+25)
    {
      Scene=2;
    }
    // Here i am directing the computer to move the circles( according to their coordinates) when a certain key is pressed.
    if (keyPressed)
    {
      if (key=='w'||key=='W')
      {
        playerY=playerY-0.5;
      }
      if (key=='s'||key=='S')
      {
        playerY=playerY+0.5;
      }
      if (key=='a'||key=='A')
      {
        playerX=playerX-0.5;
      }
      if (key=='d'||key=='D')
      {
        playerX=playerX+0.5;
      }
    }
  }
}
