/* 
  PROCESSINGJS.COM - BASIC EXAMPLE
  Delayed Mouse Tracking  
  MIT License - Hyper-Metrix.com/F1LT3R
  Native Processing compatible 
*/  

// Global variables
float radius = 50.0;
int X, Y;
int nX, nY;
int mpX=-100, mpY=-100;
int delay = 10;

// Setup the Processing Canvas
void setup(){

  // portrait
  size(screen.height, screen.width);

  strokeWeight( 10 );
  frameRate( 15 );
  X = width / 2;
  Y = width / 2;
  nX = X;
  nY = Y;  
}

// Main draw loop
void draw(){
  
  radius = radius + sin( frameCount / 4 );
  
  // Track circle to new destination
  X+=(nX-X)/delay;
  Y+=(nY-Y)/delay;
  
  // Fill canvas grey
  background( 100 );
  
  // Set fill-color to blue
  fill( 0, 121, 184 );
  // Set stroke-color white
  stroke(255); 
  // Draw circle
  ellipse( X, Y, radius, radius );                  

  // Set fill-color to blue
  fill( 200, 150, 150 );
  // Set stroke-color white
  stroke(255); 
  // Draw circle
  ellipse( mpX, mpY, radius, radius );                  
   
  text("v0.1 ["+round(X)+","+round(Y)+"]",20,20);
}


// Set circle's next destination
void mouseMoved(){
  nX = mouseX;
  nY = mouseY;  
}

// Set circle's next destination
void mousePressed(){
  mpX = mouseX;
  mpY = mouseY;  
}


