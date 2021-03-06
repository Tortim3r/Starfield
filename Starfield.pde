//your code here
Particle[] dream;
void setup()
{
	size(800,800);
	
	dream = new Particle[100];
	for(int i = 0;i<(dream.length);i++)
	{
		dream[i] = new NormalParticle();
	}
	dream[99] = new OddballParticle(400,400);
	dream[98] = new JumboParticle();

}
void draw()
{	
	background(0);
	for(int i = 0;i<dream.length;i++)
	{
		dream[i].show();
		dream[i].move();	

	}
}
class NormalParticle implements Particle
{
	double myX,myY,mySpeed,myAngle;
	
	public NormalParticle()
	{
		myX = 400;
		myY = 400;
		mySpeed = Math.random()*6;
		myAngle = Math.random()*360;
		
	}
	public void show()
	{	
		fill(255);
		ellipse((float)(myX),(float)(myY),20,20);
	}
	public void move()
	{
		myX += (Math.cos(myAngle)*mySpeed);

		myY += (Math.sin(myAngle)*mySpeed);
		myAngle += .01;
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	double myX,myY;
	
	OddballParticle(double x,double y)
	{
		myX = x;
		myY = y;
		
	}
	public void show()
	{	
		fill(255);
		rect((float)(myX),(float)(myY),60,60);
	}
	 public void move()
	{
		myX += (float)(Math.random()*6)-3;
		myY += (float)(Math.random()*6)-3;
	}
}

class JumboParticle extends NormalParticle //uses inheritance
{
	JumboParticle()
	{
		myX = 400;
		myY = 400;
		mySpeed = Math.random()*6;
		myAngle = Math.random()*360;
		
	}
	public void show()
	{
		fill(255);
		ellipse((float)(myX),(float)(myY),60,60);
	}
	public void move()
	{
		myX += (Math.cos(myAngle)*mySpeed);
		myY += (Math.sin(myAngle)*mySpeed);
		myAngle += .01;
	}
}

 