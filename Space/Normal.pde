class Normal {
  double x_pos, y_pos, velocity, angle;
  int r, g, b;
  int xdirection = 1;
  int ydirection = 1;
  public Normal(double x, double y, double speed, double turn, int r, int g, int b) {
    x_pos = x;
    y_pos = y;
    this.r = r;
    this.g = g;
    this.b = b;
    velocity = speed;
    angle = turn;
  }

  void show() {
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(r, g, b);
    ellipse(0, 0, 10, 10);
    popMatrix();
  }

  void move() {
    if (x_pos > 400 || x_pos<-400)
      xdirection = xdirection*-1;
    if (y_pos > 300 || y_pos<-300)
      ydirection = ydirection*-1;
    if (!mousePressed) {
      x_pos = (x_pos + Math.cos(angle)*velocity)*xdirection;
      y_pos = (y_pos + Math.sin(angle)*velocity)*ydirection;
    } else {
      x_pos = mouseX -(int)(Math.random()*50-25); 
      y_pos = mouseY -(int)(Math.random()*50-25);
    }
  }
}
