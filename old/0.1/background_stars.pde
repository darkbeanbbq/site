Star[] stars = new Star[150];

void setup() {
  size(window.innerWidth, window.innerHeight);
  background(40);
  
  for(int i=0; i<stars.length; i++) {
    stars[i] = new Star(random(width), random(height)); 
  }
}

void draw() {

size(window.innerWidth, window.innerHeight);

//this rect doesn't seem to work with size() inside void draw
 fill(40, 40);
 rectMode(CORNER);
 rect(0, 0, width, height);
 
   for(int i=0; i<stars.length; i++) {
    stars[i].fly(i/20);
   }
  
}
class Star {
 float x;
 float y;
 
 Star(float starX, float starY) {
 x = starX;
 y = starY; 
 }
 
 void fly(int speed) {
   x = x - speed;
   y = y - speed;
   if(x < 0) {
     x = width;}
   if(y < 0) {
     y = height;}
     
   rectMode(CENTER);
   fill(255);
   noStroke();
   rect(x, y, 1, 1);
   }
}

