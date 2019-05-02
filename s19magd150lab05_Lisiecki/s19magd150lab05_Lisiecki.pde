int rectX, rectY;
int circleX, circleY;
int rectSize = 90;
int circleSize = 93;
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;
int posX = 400;
float posY = 400;
int ballDiameter = 200;
float velocityY = 0.0; 
float gravity = 1.5;
boolean onGround = false;
float jumpSize = -40;

void setup() {
  size(800, 800);
  rectColor = color(#03FF32);
  rectHighlight = color(#03A021);
  circleColor = color(#030303);
  circleHighlight = color(#4B4B4B);
  baseColor = color(#D403FF);
  currentColor = baseColor;
  circleX = width/2+circleSize/2+10;
  circleY = height/2;
  rectX = width/2-rectSize-10;
  rectY = height/2-rectSize/2;
  ellipseMode(CENTER);
}

void draw() {
  background(currentColor);
  update();
  update(mouseX, mouseY);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void update(){
  velocityY = gravity + velocityY;
  posY = velocityY + posY;
  if (posY + (ballDiameter/2) >= (height/2)){
    posY = (height/2) - (ballDiameter/2);
    onGround = true;
  } else {
    onGround = false;
  }
  for(int x = 1; x < 2; x++){
    noFill();
    ellipse(posX, posY, ballDiameter+ (x*150), ballDiameter + (x*150));
  }
}

void mousePressed() {
  if (circleOver) {
    currentColor = circleColor;
  }
  if (rectOver) {
    currentColor = rectColor;
  }
    if (onGround){
    jump();
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
void jump(){
  velocityY = jumpSize;
}
