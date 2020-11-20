class Button {
  Action a; //strategy


  int x, y, w, h;
  String name; 

  float mX;
  float mY;

  Button(int tempX, int tempY, int tempW, int tempH, String tempName) {
    x = tempX; 
    y = tempY; 
    w = tempW; 
    h = tempH;
    name = tempName;
  }
  //anonym klasse / ConcreteStrategies 
  void addAction(Action a) {
    this.a = a; //this. fordi at jeg referer til den den værdi (a), som hører til datatypen "Action".
  }

  void display() {
    fill(255);
    rect(x, y, w, h);
    fill(0);
    text(name, x+w/2, y+h/2);
  }

  void click(float mX, float mY) {
    if (mX > x && mX < x + w && mY > y && mY < y + h) {
      println("clicked");
      a.execute();
    }
  }
}
