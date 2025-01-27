function setup() {
  createCanvas(800, 800);
  noLoop();
}

function draw() {
  background(135, 206, 235);
  
  fill(0,50,0);
  noStroke();
  rect(0, 600, 800, 800);
  
  fill(255, 255, 0);
  circle(700, 100, 150);
  
  fill(255,247,204);
  square(500, 450, 150);
  
  fill(255, 0, 0);
  triangle(450, 450, 700, 450, 575, 300);
  
  fill(102,51,0);
  rect(100, 500, 30, 100);
  fill(30, 179, 0);
  circle(115, 460, 100);
  
  fill(102,51,0);
  rect(300, 500, 30, 100);
  fill(30, 179, 0);
  circle(315, 460, 100);
  
  fill(102, 51, 0);
  rect(550, 510, 50, 90);
  
  fill(255, 255, 0);
  circle(590, 560, 10);
  
  fill(255, 255, 255);
  ellipse(200, 100, 200, 80)
  fill(255, 255, 255);
  ellipse(300, 100, 200, 80)
}
