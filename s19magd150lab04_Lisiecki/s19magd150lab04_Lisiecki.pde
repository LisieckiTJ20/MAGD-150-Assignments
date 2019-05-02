int sliceX;
color sauce;
color cheese;
boolean toppings;
void setup(){
size(500,500);
sliceX=0;
sauce = color(255,255,255);
cheese = color(255,255,255);
toppings= false;
}

void draw(){
  background(200); //Table
  //Crust
  fill(162,142,59);
  ellipse(width/2, height/2, 450, 450);
  //Sauce
  fill(sauce); 
  ellipse(width/2, height/2, 420, 420);
  //Cheese
  fill(cheese);
  ellipse(width/2, height/2, 390, 390);
  
  if(keyPressed){ //Just sauce if 1 is pressed 
    if(key=='1'){
      sauce = color(255, 0,0); //marinara
    } else 
    sauce = color(255);
  }

  if(keyPressed){ //Just cheese if 2 is pressed 
    if(key=='2'){
      cheese = color(255,255,60);
    } else
    cheese = color(255);
  }
  if(keyPressed){ //Both if 3 is pressed 
    if(key=='3'){
      sauce = color(255, 0,0);
      cheese = color(255,255,60);
    }
  }



if(toppings){ //Pepperoni 
    for (int x=1; x<4; x++){
      for (int j = 1; j<15; j=j+5) {
      fill(200, 100, 100); 
      ellipse(125*x, 130+20*j, 30, 30);
    }
    }
    
}
    
  fill(175,155,74); //Moving Pizza Slice
  triangle(sliceX-5, 465, sliceX+25, 465, sliceX+10, 500); 
  sliceX= sliceX+1;

if (sliceX > width){
  sliceX=-50;
}
}

void mousePressed(){
  
  toppings=!toppings;

}
