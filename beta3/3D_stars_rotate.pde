Star[] stars = new Star[2000];
float z = 0;

void setup() {

    size(window.innerWidth, window.innerHeight, P3D);
  
  for(int i=0; i<stars.length; i++) {
    stars[i] = new Star(random(-width, width), random(-width, width), random(-width, width)); 
  }
}

void draw() {

    // doesn't work :( //
    //size(window.innerWidth, window.innerHeight, P3D);
    
 background(20);
 
 // CAMERA //
float mX = map(mouseX, 0, width, 100, 2000);
camera(0, 0, mX, 0, 0, 0, 0, 1, 0);
 
rotateY(z);
rotateZ(z);
z = z + 0.001;
 
    for(int i=0; i<stars.length; i++) {
    stars[i].fly(0); 
   }
}


class Star {
 float x;
 float y;
 float z;
 float s = random(2, 10);
 
 Star(float starX, float starY, float starZ) {
 x = starX;
 y = starY;
 z = starZ; 
 }
 
 void fly(int speed) {
   x = x - speed;
   y = y - speed;
     
   pushMatrix();
   translate(x, y , z);
   noSmooth();
   colorMode(HSB, 360, 100, 100, 100);
   
   fill(0, 0, 100, 100);
   
   noStroke();
   
     // BOX //
   //box(10);
   box(s);
   //box(s, s, 50);
   
     // SPHERE //
   //sphere(4);
   //sphereDetail(10);
   
   popMatrix();
 }
}
