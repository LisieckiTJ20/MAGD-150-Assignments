size(500, 500);
background(255);

fill(200); //Clouds
ellipse(120, 50, 200, 100);
fill(200);
ellipse(380, 50, 200, 100);

strokeWeight(0); //Building
rectMode(CENTER); 
fill(200);
rect(250, 300, 200, 300);

stroke(100); //Window
strokeWeight(5);
line(220, 210, 280, 210); 
line(220, 210, 220, 270);
line(280, 270, 280, 210);
line(220, 270, 280, 270);
line(220, 240, 280, 240);
line(250, 270, 250, 210);

strokeWeight(0); // Door
fill(50); 
rect(250, 400, 50, 100); 

stroke(255); // Door Knob
strokeWeight(10);
point(265, 395);

stroke(255); //Snowman
strokeWeight(15); 
point(250, 408);
strokeWeight(20);
point(250, 422);
strokeWeight(25);
point(250, 440);
stroke(0);
strokeWeight(3);
point(248, 406);
point(252, 406);

rectMode(CORNER); //Road
noStroke();
fill(0);
rect(0, 450, 500, 50);
