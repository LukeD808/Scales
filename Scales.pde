void setup() {
  background(255,255,255); // background color
  size(500, 500); // background size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  for (int y = 510; y >= -60; y-=30){ // columns
    for (int x = 0; x <= 540; x+=30){ // rows
      fill(252-x/10-y/10, 186-x/10-y/10, 3-x/10-y/10); // gradient colors
      stroke(y+30-x/5,0,100);
      scale(x,y);
    }
  }
}
void scale(int x, int y) {
  strokeWeight(5);
  bezier(x,y, x - 60, y, x - 60, y + 60, x, y + 60); // original scale
}
