import peasy.*;
PeasyCam cam;
float angle;
PShape esfera;
float r = 200;
PImage mundo;
void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 1000);
  mundo = loadImage("mundo.jpg");
  noStroke();
  esfera = createShape(SPHERE, r);
  esfera.setTexture(mundo);
  
}
void draw() {
  background(51);
  //translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.01;
  
  lights();
  fill(200);
  noStroke();
  //sphere(r);
  shape(esfera);
}