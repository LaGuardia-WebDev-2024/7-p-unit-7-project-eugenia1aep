//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkX = 200; // X position for the firework
var fireworkY = 200; // Y position for the firework
var explosionSize = 10; // Starting size of the firework explosion
var fireworkR = 255; // Red component of the color
var fireworkG = 100; // Green component of the color
var fireworkB = 0;   // Blue component of the color

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  // Add Text on Canvas
  // Text color (white)
    textSize(24); // Text size
    text("firework show!", 120, 30); // message at the top of the canvas
  
  
  //🎯Animation Code Goes Here
  fill(fireworkR, fireworkG, fireworkB); // Firework color
  ellipse(fireworkX, fireworkY, explosionSize, explosionSize); // Draw the firework

  explosionSize += 2; // Increase explosion size

  // Reset explosion when it reaches a certain size
  if (explosionSize > 50) {
    explosionSize = 2; // Reset size
    fireworkX = random(50, 350); // New random X position
    fireworkY = random(50, 350); // New random Y position
    
    // Change firework color
        fireworkR = random(0, 255);
        fireworkG = random(0, 255);
        fireworkB = random(0, 255);
  }

}