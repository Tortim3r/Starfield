//your code here
NormalParticle dream;
void setup()
{
	size(800,800);
	
	//Particle[] dream = new NormalParticle[100];
	//for(int i;i<dream.length;i++)
	//{
		dream = new NormalParticle(400,400);
	//}

}
void draw()
{
	//for(int i;i<dream.length;i++)
	//{
		//dream[i].show;
		//dream[i].move;
		dream.show();
		dream.move();

	//}
}
class NormalParticle
{
	double myX,myY,mySpeed,myAngle;
	
	NormalParticle(double x,double y)
	{
		myX = x;
		myY = y;
		mySpeed = Math.random()*6;
		myAngle = Math.random()*360;
		
	}
	void show()
	{	
		fill(255);
		ellipse((float)(myX),(float)(myY),20,20);
	}
	void move()
	{
		myX += (Math.cos(myAngle)*mySpeed);
		myY += (Math.sin(myAngle)*mySpeed);
	}
}
interface Particle
{
	//public void show();
	//public void move();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
}
class JumboParticle implements Particle //uses inheritance
{
	//your code here
}

 