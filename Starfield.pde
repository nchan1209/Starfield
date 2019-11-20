Particle[] jeff;

void setup()
{
	size(1000,1000);
	jeff = new Particle[250];
	for(int i = 0; i < jeff.length; i++){
		jeff[i] = new Particle();
		jeff[0] = new OddballParticle();
	}
	
}
void draw()
{
	background(0);
	for(int i = 0; i < jeff.length; i++){
		jeff[i].move();
		jeff[i].show();
}

}
class Particle
{
	double myX, myY, mySpeed, myAngle;
	int myColor;
	Particle(){
		myColor =color((int)(Math.random() * 256));
		myY = 500;
		myX = 500;
		myAngle = Math.random() * (2 * Math.PI);
		mySpeed = (Math.random() * 10);
	}

		void move(){
			myX = myX + Math.cos(myAngle) * mySpeed;
			myY = myY + Math.sin(myAngle) * mySpeed;
		}

		void show(){
			ellipse((int)myX, (int)myY, 30,30);
			fill(myColor);

		}
}

class OddballParticle extends Particle //inherits from Particle
{
	OddballParticle(){
		myColor = color(235,145,155);
		myY = 500;
		myX = 500;
		myAngle = Math.random() * (2 * Math.PI);
		mySpeed = (Math.random() * 20);
	}
	void move(){
		myX = (myX + Math.cos(myAngle) * mySpeed) * 3;
		myY = (myY + Math.sin(myAngle) * mySpeed) * 2;
	}
	void show(){
		ellipse((int)myX,(int)myY, 50, 50);
		fill(myColor);
	}
}


