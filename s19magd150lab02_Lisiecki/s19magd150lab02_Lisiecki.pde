size(500, 500);
background(0);

fill(0, 175, 255); // UFO
arc(250, 195, 100, 100, 3.15, TWO_PI);
fill(180, 0, 255);
arc(250, 250, 200, 150, 3.15, TWO_PI);
colorMode(HSB, 360, 100, 100, 1.0);
strokeWeight(10);
stroke(360, 100, 100);
point(250, 235);
point(230, 235);
point(270, 235);
point(210, 235);
point(290, 235);
point(190, 235);
point(310, 235);
point(170, 235);
point(330, 235);

strokeWeight(0);

fill(#82F238); // UFO Beam
triangle(250, 250, 320, 400, 180, 400);

fill(200); // Asteroids
quad(50, 50, 100, 30, 90, 80, 50, 80);
quad(450, 50, 400, 30, 410, 80, 450, 80);
