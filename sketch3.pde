
void setup() {
  size(screen.height, screen.width);

noStroke();
colorMode(HSB, 5);
background(3,1,3);
}
 
void draw() {
text("This will only work on iOS devices such as iPhones or iPads, please navigate to this page with those devices.", 10,10);
text("Multiple touch points will produce a different colour per point up to a maximum of 5", 10, 20);
    }
    
void touchMove(t){
   for(int i; i<t.touches.length; i++){
      fill(i,5,5);
      ellipse(t.touches[i].offsetX, t.touches[i].offsetY, 30, 30);
   }
}
 
