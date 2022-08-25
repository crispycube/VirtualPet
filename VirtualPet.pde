size(1000, 1000);
fill(255, 5, 218);
noStroke();
ellipse(500, 500, 800, 600); // face
ellipse(327, 231, 150, 150); // left ear;
ellipse(673, 231, 150, 150); // right ear
fill(231, 73, 208);
arc(327, 231, 100, 100, 6*PI/7, 6*PI/7+PI); // left ear insides
arc(673, 231, 100, 100, -6*PI/7, -6*PI/7+PI); // right ear insides
stroke(0);
fill(231, 73, 208);
ellipse(500, 550, 400, 200); // snout  
fill(0, 0, 0);
ellipse(350, 350, 50, 100);
ellipse(650, 350, 50, 100);// left/right eyes
fill(231, 41, 202);
ellipse(425, 550, 50, 100);
ellipse(575, 550, 50, 100); // left/right nostrils
