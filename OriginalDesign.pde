int x = 0;
int y = 510;
int y2 = 1;
int dia = 190;
int dia2 = 70;

void setup ()
{
  size(600,600);
  noStroke();
}

void draw()
{
  noStroke();
  background(148,119,240);
  fill(98,83,41);
  rect(0,525,600,75);
  fill(96,174,250);
  stroke(0,0,0);
  rect(300,100,200,200);
  circleCarpet();
  noStroke();
  lamp();
  ball();
  x = x + 2;
  y = y - y2;
  dia = dia - 1;
  dia2 = dia2 - 1;
}

void lamp()
{
  fill(46,38,14);
  rect(40,505,100,20);
  rect(50,495,80,10);
  rect(70,495-35,40,35);
  rect(80,400,20,100);
  fill(243,247,12);
  quad(30,400,150,400,110,360,70,360);
}

void ball()
{
  fill(250,207,96);
  ellipse(x,y,30,30);
  if (x > 600) {
    x = 0;
  }
  if (y < 450) {
    y2 = -1;
  }
  else if (y > 510) {
    y2 = 1;
  }
}

void circleCarpet()
{
  ellipse(400,200,dia,dia);
  ellipse(400,200,dia2,dia2);
  if (dia < 11) {
    dia = 190;
  }
  if (dia2 < 11) {
    dia2 = 190;
  }
}


