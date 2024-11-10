Particle [] a = new Particle[1000];
void setup(){
  size(500,500);
  for(int i=0; i<a.length; i++){
    a[i] = new Particle();
  }
  for(int i = 0; i < 10; i++){
    a[i] = new oddBall();
  }
}

void draw(){
  background(0);
  for(int i = 0; i<a.length; i++){
    a[i].show();
    a[i].move();
  }
}

class Particle{
  double myX, myY, speed, angle, size, myColor, my2Color, my3Color;
  
  Particle(){
    myX = 255;
    myY = 255;
    speed = (double)(Math.random()*5);
    angle = (double)(Math.random()*2*Math.PI);
    size = 5;
    myColor =255;
    my2Color = 255;
    my3Color = 255;
  }
  
  void move(){
    myX = myX + Math.cos(angle)*speed;
    myY = myY + Math.sin(angle)*speed;
  }
  void show(){
    fill((int)myColor,(int)my2Color,(int)my3Color);  
    ellipse((float)myX,(float)myY, (float)size, (float)size);
  }
}

class oddBall extends Particle{
  oddBall(){
    size = 10;
    myColor = 255;
    my2Color = 0;
    my3Color = 0;
  }
}
