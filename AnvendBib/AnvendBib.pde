GUI_KnapBib.Button BT6 = (new GUI_KnapBib()).new Button(10, 10, 150, 50, "Slå med 6s terning!", this);
GUI_KnapBib.Button BT10 = (new GUI_KnapBib()).new Button(340, 10, 150, 50, "Slå med 10s terning!", this);
GUI_KnapBib.Button BT420 = (new GUI_KnapBib()).new Button(175, 10, 150, 50, "Slå med 420s terning!", this);

int sum;
int terningeKast;
static public PApplet p;
public void setup() {
  size(500, 300);
p =this;
  BT6.addAction(new GUI_KnapBib.Action() {
    PApplet pp;
    GUI_KnapBib.Terning t6 = new GUI_KnapBib.Terning(8,p);
    public void execute() {
      t6.kast();
    }
  }
  );

  BT10.addAction(new GUI_KnapBib.Action() {   
    GUI_KnapBib.Terning t10 = new Terning(6, this);
    public void execute() {
      t10.kast();
    }
  }
  );

  BT420.addAction(new GUI_KnapBib.Action() {   
    GUI_KnapBib.Terning t420 = new Terning(420, this);
    public void execute() {
      t420.kast();
    }
  }
  );
}


public void draw() {
  clear();
  BT6.display();
  BT10.display();
  BT420.display();
  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

void mousePressed() {
  BT6.click();
  BT10.click();
  BT420.click();
}
