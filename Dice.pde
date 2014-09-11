Die die1;
Die die2;

void setup()
{
	smooth();
	size(300,300);
	noLoop();
	die1=new Die(40,40);
	die2=new Die(160,160);
	strokeWeight(20);
}
void draw()
{	
	background(255);
	die1.show();
	die2.show();
	die1.roll();
	die2.roll();
	stroke(0);
	noFill();
	strokeWeight(2);
	rect(0,0,300,300);
}

void mousePressed()
{
	redraw();
}
	
class Die 
{
	int dieX, dieY, roll;
	Die(int x, int y) 
	{
		dieX=x;
		dieY=y;
	}
	void roll()
	{
		roll=(int)((Math.random()*5)+1);
	}
	void show()
	{
		stroke(0);
		strokeWeight(1.5);
		fill(255,255,255,255);
		//rect(dieX,dieY,100,100,30);
		beginShape();
		curveVertex(dieX, dieY);
		curveVertex(dieX, dieY);
		curveVertex(dieX, dieY+100);
		curveVertex(dieX+100, dieY+100);
		curveVertex(dieX+100, dieY);
		curveVertex(dieX, dieY);
		curveVertex(dieX, dieY+100);
		curveVertex(dieX, dieY+100);
		endShape();
		strokeWeight(17);
		if(roll==1)
		{
			point(dieX+50,dieY+50);
		}
		if (roll==2)
		{
			point(dieX+30,dieY+30);
			point(dieX+70,dieX+70);
		}
		else if (roll==3)
		{
			point(dieX+30,dieY+30);
			point(dieX+50,dieX+50);
			point(dieX+70,dieY+70);			
		}
		else if (roll==4)
		{
			point(dieX+30,dieY+30);
			point(dieX+70,dieX+70);
			point(dieX+30,dieY+70);
			point(dieX+70,dieX+30);
		}
		else if (roll==5)
		{
			point(dieX+30,dieY+30);
			point(dieX+70,dieX+70);
			point(dieX+30,dieY+70);
			point(dieX+70,dieX+30);
			point(dieX+50,dieX+50);
			
		}
		else if (roll==6)
		{
			point(dieX+30,dieY+30);
			point(dieX+30,dieX+50);
			point(dieX+30,dieY+70);
			point(dieX+70,dieX+30);
			point(dieX+70,dieX+50);
			point(dieX+70,dieX+70);
		}
		fill(0);
	textSize(70);
	textAlign(CENTER);
	text(die1.roll+die2.roll, 215,110);
	}
}
