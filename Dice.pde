class die {
  float f;
  int myX, myY;
  float offsetx = 22.5;
  int offsety = 30;
  int rolled;
  die(int x, int y)
  {
    roll();
    myX = x;
    myY = y;
  }
 
  void roll() {
    f =((int)(Math.random()*6)+1);
  }
  void show() {
    fill(255);
    stroke(5);
    fill(78,150,193);
    rect(myX, myY, 50, 50) ;
    fill(0);
    if (f == 6) {
      text ('6', myX+offsetx, myY+offsety);
    }
    else if (f == 5) {
      text ('5', myX+offsetx, myY+offsety);
    }
    else if (f == 4) {
      text ('4', myX+offsetx, myY+offsety);
    }
    else if (f == 3) {
      text (3, myX+offsetx, myY+offsety);
    }
    else if (f == 2) {
      text (2, myX+offsetx, myY+offsety);
    } else {
      text (1, myX+offsetx, myY+offsety);
    }
  }
}
