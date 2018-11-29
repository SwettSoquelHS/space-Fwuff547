class Normal {
  double x_pos, y_pos, velocity, angle;
  int r, g, b;
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
     ellipse(0,0,10,10);
     popMatrix();
   }
   
  void move() {
    x_pos = x_pos + Math.cos(angle)*velocity;
    y_pos = y_pos + Math.sin(angle)*velocity;
   }
  

}
