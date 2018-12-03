
public class Oddball extends Normal {
  public Oddball (double x, double y, double speed, double turn, int r, int g, int b) {
    super(x, y, speed, turn, r, g, b);

  
  }
  
  void show() {
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(r, g, b);
    rect(0, 0, 20, 20);
    popMatrix();
  }
  
  void move() {
    if (x_pos > 800 || x_pos<-800)
      xdirection = xdirection*-1;
    if (y_pos > 600 || y_pos<-600)
      ydirection = ydirection*-1;
    if (!mousePressed) {
      x_pos = (x_pos + Math.cos(angle)*velocity)*xdirection+(Math.random()*30-15);
      y_pos = (y_pos + Math.sin(angle)*velocity)*ydirection+(Math.random()*30-15);
    } else {
      x_pos = mouseX -(int)(Math.random()*50-25); 
      y_pos = mouseY -(int)(Math.random()*50-25);
    }
  }
  
}
