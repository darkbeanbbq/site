Star[] stars = new Star[2000];

void setup() {
    size(window.innerWidth, window.innerHeight, P3D);
  //size(1440, 800, P3D);
  
  for(int i=0; i<stars.length; i++) {
    //stars[i] = new Star(random(-1600, 1600), random(-1600, 1600), random(-1600, 0)); 
    stars[i] = new Star(random(-(width*2), (width*2)), random(-(height*2), (height*2)), random(-(height*2), 0)); 
  }
}

void draw() {

    // doesn't work :( //
    //size(window.innerWidth, window.innerHeight, OPENGL);
    
 //background(300); // LIGHT GREY
 background(20); // DARK GREY
 //background(#FF7BAC); // PINK
 //background(#3599BC); // Blue-ish
 //background(#FBB03B); // Orange
 //noCursor();
 
 // CAMERA //
 //camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, -800, 0, 1, 0);
 camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, -800, 0, 1, 0);
 
 float mX = map(mouseX, 0, width, 0, width/2);
 float mY = map(mouseY, 0, height, 0, height/2);
 
 translate(mX, mY); // MAP HORIZONTAL & VERTICAL
 //translate(mouseX, mouseY); // HORIZONTAL & VERTICAL
 //translate(mouseX, 0); // HORIZONTAL ONLY
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
   
   // DEPTH IS HUE //
   //float k = map(z, -1600, 0, 0, 360);
   //fill(k, 100, 100, 100);
   
   // DEPTH IS ALPHA //
   float c = map(z, -(height*2), 0, 5, 100);
   //fill(0, 0, 100, c);
   fill(0, 0, c);
   
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

