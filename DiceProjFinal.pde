int myX=25;
int myY=25;
float total;
float totalTotal=0;
int totaldie;
String totalAverage;
int numOrow= width/16;
int numCol=height/8;
int numRowN=0;
int numColN=0;

void setup()
{
  size(750,750);
  noLoop();
}
void draw()
{
  myX=width/2-(numCol/2)*55;
  myY=height/2-((numOrow/2)*55+75);
  total=0;
   numColN=0;
   numRowN=0;
  background(174,248,251);
  
  while (numRowN<numOrow) {
    while (numColN<numCol) {
      die Bob= new die(myX, myY);
      Bob.show();
      myX=myX+55;
      totaldie++;
      total=total+(Bob.f);
      numColN++;
    }
    myY=myY+55;
    myX=width/2-(numCol/2)*55;
    numColN=0;
    numRowN++;
  }
  totalTotal=totalTotal+total;
  totalAverage=String.format("%.2g%n",total/(numOrow*numCol));
  textSize(16);
  text("total on screen:  "+total, width/2, height-200);
  text("dice rolled:  "+totaldie, width/2, height-175);
  text("total rolled:  "+totalTotal, 100, height-200);
  text("average of dice: "+totalAverage, 200, height-175);
}
void mousePressed()
{
  redraw();
}
