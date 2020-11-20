Button buttonTerning6 = new Button(10, 10, 150, 50, "Slå med 6s terning!");
Button buttonTerning10 = new Button(340, 10, 150, 50, "Slå med 10s terning!");
Button buttonTerning420 = new Button(175, 10, 150, 50, "Slå med 420s terning!");

int sum;
int terningeKast;

void setup() {
  size(500, 300); 

  //Anonym indre klasse (AIK)  
  //AIK for terning der kaster med value 6
  buttonTerning6.addAction(new Action() {

    Terning t6 = new Terning(6);

    public void execute() {
      t6.kast(); 
      //terningeKast = int(random(1, 6));
      // sum += terningeKast;
    }
  }
  );
  //Anonym indre klasse (AIK) 
  //AIK for terning der kaster med værdi 10
  buttonTerning10.addAction(new Action() {   
    Terning t10 = new Terning(6);
    public void execute() {
      t10.kast();
    }
  }
  );

  //Anonym indre klasse (AIK) 
  //AIK for terning der kaster med værdi 420
  buttonTerning420.addAction(new Action() {   
    Terning t420 = new Terning(420);
    public void execute() {
      t420.kast();
    }
  }
  );
}
void draw() {
  clear();
  buttonTerning6.display();
  buttonTerning10.display();
  buttonTerning420.display();
  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

void mousePressed() {
  buttonTerning6.click(mouseX, mouseY);
  buttonTerning10.click(mouseX, mouseY);
  buttonTerning420.click(mouseX, mouseY);
}
