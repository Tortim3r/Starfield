//your code here
void setup()
{
	size(800,800);
	Particle[] dream = new Particle[100]
	for(int i;i<dream.length;i++)
	{
		dream[i] = new Particle();
	}

}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
}
class JumboParticle implements Particle //uses inheritance
{
	//your code here
}

