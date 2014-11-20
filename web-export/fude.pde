float x;
float y;
float px;
float py;
float easing = 0.2;
float fullStroke = 10;

void setup(){
  background(255);
  size(200,200);
  smooth();
}

void draw(){
  float targetX = mouseX;
  float targetY = mouseY;
  x += (targetX - x) * easing;
  y += (targetY - y) * easing;
  float weight = fullStroke - dist (x,y,px,py) / 2;
  if (weight<1) {
    weight = 1;
  }
  strokeWeight(weight);
  stroke(0);
  if(!mousePressed){
    noStroke();
  }
  line(px,py,x,y);
  px = x;
  py = y;
}


