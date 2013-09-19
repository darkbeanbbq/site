 // based on a tutoprocessing.fr tutorial //

Point[] points;
int nbpoints;

void setup() {
  //size(400, 400);
  size(window.innerWidth, window.innerHeight);
  smooth();
  nbpoints = 100;
  points = new Point[nbpoints];
  for (int i = 0; i < points.length; i++) {
    points[i] = new Point();
  }
}

void draw() {
    size(window.innerWidth, window.innerHeight);
  int r1 = 255;
  int g1 = 109;
  int r2 = 245;
  int g2 = 222;
  int b = 99;
  if (mousePressed == true) {
    r1 = 245;
    g1 = 222;
    r2 = 255;
    g2 = 109;
  }
  //background(245, 222, 99);
  //stroke(255, 109, 99);
  background(r2, g2, b);
  stroke(r1, g1, b);
  
  float ST = map(mouseX, 0, width, width/1000, width/50);
  strokeWeight(ST);
  //strokeWeight(10);
  
  for (int i = 0; i < points.length; i++) {
    points[i].display();
    for (int j = i+1; j < points.length; j++) {
      strokeCap(ROUND);
      if (j != i) {
        float dst = dist(points[i].x, points[i].y, points[j].x, points[j].y);
        //float Mdst = map(mouseX, 0, width, width/5, width/3);
        if (dst < 100) {
          line(points[i].x, points[i].y, points[j].x, points[j].y);
        }
      }
    }
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getAmount();
  st = st + e;
}

class Point
{
  //global variables
  float x; //point x position
  float y; //point y position
  float vx; //point horizontal speed
  float vy; //point vertical speed
  float s; // margin/padding

  Point() {
    //initialisation des variables.
    s = 50;
    x = random(s, width-s);
    y = random(s, height-s);
    vx = random(-0.5, 0.5);
    vy = random(-0.5, 0.5);
  }

  void display() {
    //variable update
    x += vx;
    y += vy;

    //wall colision
    if (x <= s || x >= width-s) {
      vx = -vx;
    }
    if (y <= s || y >= height-s) {
      vy = -vy;
    }
    
    //resize repositionning
    if(x < s-1 || x > width-s+1) {
        x = random(s, width-s);
    }
    
    if(y < s-1 || y > height-s+1) {
        y = random(s, height-s);
    }
    
    //fill(255);
    //stroke(255, 109, 99);
    //stroke(r1, g1, b);
    //strokeWeight(5);
    //ellipse(x, y, s*2, s*2);
    point(x, y);
  }
}
