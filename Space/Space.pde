//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] lotsOfNormal = new Normal[100];
void setup() {
	size(800, 600);
  background(#0B0834);
  for(int i = 0; i<100; i++) {
    lotsOfNormal[i] = new Normal((Math.random()*800), (Math.random()*600), (Math.random()*30-15), (Math.random()*360), (int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200)); 
   }
} //end of setup
 

void draw() {
	fill(#E51010, 10);
   rect(0,0,width, height);
  for(int i = 0; i<100; i++) {
    lotsOfNormal[i].show(); 
  }
  for(int i = 0; i<100; i++) {
    lotsOfNormal[i].move(); 
  }
} //end of draw
