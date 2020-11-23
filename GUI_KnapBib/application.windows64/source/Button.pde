class Button {
  PApplet p; //import af alle processings lort 
  Action a; //strategy


  int x, y, w, h;
  String name; 

  float mX;
  float mY;

  Button(int tempX, int tempY, int tempW, int tempH, String tempName, PApplet p) {
    this.p = p;
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
    p.fill(255);
    p.rect(x, y, w, h);
    p.fill(0);
    p.text(name, x+w/2, y+h/2);
  }

  void click() {
    if (p.mouseX > x && p.mouseX < x + w && p.mouseY > y && p.mouseY < y + h) {
      a.execute();
    }
  }
}
