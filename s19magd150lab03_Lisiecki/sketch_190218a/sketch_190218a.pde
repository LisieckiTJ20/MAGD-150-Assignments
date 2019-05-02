boolean flipFlopper;

float a = max(0, 50);
float b = min(0, 50);
float w = 50;
float h = 50;

void setup(){
size(500, 500);
background(#0A61F2);
map(0, 0, 50, 50, width);
}
void draw(){
fill(#34B9FF);
w = (w + 1) % (height / 5);
h = (h + 1) % (height / 5);

ellipse(mouseX, mouseY, w, h);
println("(" + mouseX + ", " + mouseY + ")");
println(frameCount);
a = mouseX - pmouseX;
b = mouseY - pmouseY;
}
