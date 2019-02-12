public void setup()
{ 
  background(0);
  size(600, 600);
}
public void draw() {
  noFill();
  ellipse(300, 300, 600, 600);
  myFractal(600, 300, 600);
 
}

int n = 600;
public void myFractal(int x, int y, int siz)
{
  noFill();
  stroke(255, 215, 0);
  strokeWeight(.2);
  ellipse(x, y, siz, siz);
  
  if (siz > n)
  { 
    myFractal(x-siz/2, y-siz/4, siz/2);
    myFractal(x-siz/2, y+siz/4, siz/2);
    myFractal(x-siz/4, y, siz/2);
    myFractal(siz/4, y, siz/2);
    myFractal(x-siz/4, y-siz/2, siz/2);
    myFractal(x+siz/4, y-siz/2, siz/2);
    myFractal(x, y-siz/4, siz/2);
    myFractal(x, siz/4, siz/2);
    myFractal(x+siz/4, y+siz/2, siz/2);
    myFractal(x-siz/4, y+siz/2, siz/2);
    myFractal(x, y+siz/4, siz/2);
    myFractal(x, siz/4, siz/2);
  }
}
 public void mousePressed(){
   if(n >= 70){
  n = n -70;
   }
}
