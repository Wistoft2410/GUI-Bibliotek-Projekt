GUI_KnapBib.Button BT6 = (new GUI_KnapBib()).new Button(10, 10, 150, 50, "Slå med 6s terning!", this);
GUI_KnapBib.Button BT10 = (new GUI_KnapBib()).new Button(340, 10, 150, 50, "Slå med 10s terning!", this);
GUI_KnapBib.Button BT420 = (new GUI_KnapBib()).new Button(175, 10, 150, 50, "Slå med 420s terning!", this);

int sum;
int value;
int terningeKast;

static public PApplet p;

public void setup() {
  size(500, 300);
  p=this;

  BT6.addAction(new GUI_KnapBib.Action() {
    
    GUI_KnapBib b = new GUI_KnapBib() ;
    GUI_KnapBib.Terning t6 = b.new Terning(6, AnvendBib.this);
    
    public void execute() {
      terningeKast = t6.kast();
      sum += t6.value;
    }
  }
  );

  BT10.addAction(new GUI_KnapBib.Action() {   
    
    GUI_KnapBib b = new GUI_KnapBib() ;
    GUI_KnapBib.Terning t10 = b.new Terning(10, AnvendBib.this);
    
    public void execute() {
      terningeKast = t10.kast();
      sum += t10.value;
    }
  }
  );

  BT420.addAction(new GUI_KnapBib.Action() {   
    
    GUI_KnapBib b = new GUI_KnapBib() ;
    GUI_KnapBib.Terning t420 = b.new Terning(420, AnvendBib.this);
    
    public void execute() {
      terningeKast = t420.kast(); 
      sum += t420.value;
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
