public class Jumbo extends Normal {
  public Jumbo (double x, double y, double speed, double turn, int r, int g, int b) {
    super(x, y, speed, turn, r, g, b);

  
  }
  @Override
  void show() {
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(r, g, b);
    ellipse(0, 0, 40, 40);
    popMatrix();
  }
}
