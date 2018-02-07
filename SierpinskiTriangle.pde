public void setup()
{
size(600,600);
background(255);

}
public void draw()
{
  noStroke();
  fill(249, 223, 142);

 

}
public void mouseClicked()//optional
{
  sierpinski(mouseX,mouseY,600);
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 25)
  {
    triangle(x,y,x+len/2,y,x+len/4,y+len/2);
  }
  else 
  {
    sierpinski(x,y,len/2);
    sierpinski(x+(len/2),y,len/2);
    sierpinski(x+len/4,y-(len/2),len/2);
  }
}