size(500, 500);

int horizon = height * 2 / 3;

int catHeadX = 200;
int catHeadY = 300;
int catHeadWidth = 90;
int catHeadHeight = 110;

int catBodyX = catHeadX + 50;
int catBodyY = catHeadY + 100;
int catBodyWidth = 150;
int catBodyHeight = 120;

noStroke();
fill(174, 211, 252);
rect(0, 0, width, horizon);
fill(150, 214, 144);
rect(0, horizon, width, height - horizon);

stroke(0);
strokeWeight(2);

fill(220, 175, 35);

// Cat's body
ellipse(catBodyX, catBodyY, catBodyWidth, catBodyHeight);

// Legs! :-)
ellipse(catBodyX - catBodyWidth / 3, 
        catBodyY + catBodyHeight / 2 - 5, 
        20, 20);
        
ellipse(catBodyX - catBodyWidth / 5, 
        catBodyY + catBodyHeight / 2 - 5, 
        20, 20);

ellipse(catBodyX + catBodyWidth / 3, 
        catBodyY + catBodyHeight / 2 - 5, 
        20, 20);

ellipse(catBodyX + catBodyWidth / 5, 
        catBodyY + catBodyHeight / 2, 
        20, 20);
        
// Cat's head
ellipse(catHeadX, catHeadY, catHeadWidth, catHeadHeight);

fill(0);

// Draw the 
ellipse(catHeadX - catHeadWidth / 5,
        catHeadY - catHeadHeight / 5,
        5, 10);

ellipse(catHeadX + catHeadWidth / 5,
        catHeadY - catHeadHeight / 5,
        5, 10);

        
