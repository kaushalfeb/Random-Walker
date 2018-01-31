int x, y, len, br;
float dir;

int p,q;

void setup()
{
  size(1000, 700);
  x =width/3;
  y = height/2;
  dir = 1;
  len = br = 5;                              //Size of square
  p = (width/3)*2;
  q = (height/2);
  noStroke();
}

void draw()
{
  dir =  random(0, 4);
  println("Dir : "+ dir);
  fill(255,00,00);

  if (dir <= 1 && y >=1)
  {                                              // Go UP
    y = y - br;
    rect(x, y, len, br);
  } else if (dir <= 2 && x <= width)
  {                                              //Go Right
    x = x + len;
    rect(x, y, len, br);
  } else if (dir <= 3 && y <= height)
  {                                              //Go Down
    y = y + br;
    rect(x, y, len, br);
  } else if (dir <= 4 && x>=0)
  {                                              //Go Left
    x = x - len;
    rect(x, y, len, br);
  }
  
  
  fill(00,255,00);
  dir =  random(0, 4);
  
  if (dir <= 1 && q >=1)
  {                                              // Go UP
    q = q - br;
    rect(p, q, len, br);
  } else if (dir <= 2 && p <= width)
  {                                              //Go Right
    p = p + len;
    rect(p, q, len, br);
  } else if (dir <= 3 && q <= height)
  {                                              //Go Down
    q = q + br;
    rect(p, q, len, br);
  } else if (dir <= 4 && x>=0)
  {                                              //Go Left
    p = p - len;
    rect(p, q, len, br);
  }
}
//End of file
