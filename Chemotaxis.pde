Bach[] bact;
  PImage img; 

void setup() {
  size(500,500);
  bact = new Bach[100];
    for(int i =0; i < bact.length; i++){
    bact[i] = new Bach();
  }
  img = loadImage("Bach.png");
}

void draw() {
   background(0);
  for(int i = 0; i<bact.length; i++){
    bact[i].show();
    bact[i].move();
  }

}


class Bach {
  int x, y;
  Bach() {
    x = (int)(Math.random()*700);
    y = (int)(Math.random()*700);
  }
  
  void move(){
    if(mouseX > x)
    x += (int)(Math.random()*9)-3;  
    else {
    x -= (int)(Math.random()*9)-3;
    }
    if(mouseY > y){
      y += (int)(Math.random()*9)-3;
    }
    else{
      y -= (int)(Math.random()*9)-3;
    }
  }
  
  void show(){
    fill(255);
    image(img, x, y, 50, 64.4); //original width: 382, h: 492
  }
}
