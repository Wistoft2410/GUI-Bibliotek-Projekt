import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class GUI_KnapBib extends PApplet {

Button buttonTerning6 = new Button(10, 10, 150, 50, "Slå med 6s terning!", this);
Button buttonTerning10 = new Button(340, 10, 150, 50, "Slå med 10s terning!", this);
Button buttonTerning420 = new Button(175, 10, 150, 50, "Slå med 420s terning!", this);
Button buttonTerningSnyde = new Button(175, 10, 150, 50, "Slå med 420s terning!", this);

int sum;
int terningeKast;

public void setup() {
   

  //Anonym indre klasse (AIK)  
  //AIK for terning der kaster med value 6
  buttonTerning6.addAction(new Action() {
    Terning t6 = new Terning(6, GUI_KnapBib.this);
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
    Terning t10 = new Terning(10, GUI_KnapBib.this);
    public void execute() {
      t10.kast();
    }
  }
  );

  //Anonym indre klasse (AIK) 
  //AIK for terning der kaster med værdi 420
  buttonTerning420.addAction(new Action() {   
    Terning t420 = new Terning(420, GUI_KnapBib.this);
    public void execute() {
      t420.kast();
    }
  }
  );
}

public void draw() {
  clear();
  buttonTerning6.display();
  buttonTerning10.display();
  buttonTerning420.display();
  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

public void mousePressed() {
  buttonTerning6.click();
  buttonTerning10.click();
  buttonTerning420.click();
}
//Den tomme interface, som er klar til at modtage kode i execute functionen
interface Action { public void execute(); }
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
  public void addAction(Action a) {
    this.a = a; //this. fordi at jeg referer til den den værdi (a), som hører til datatypen "Action".
  }

  public void display() {
    p.fill(255);
    p.rect(x, y, w, h);
    p.fill(0);
    p.text(name, x+w/2, y+h/2);
  }

  public void click() {
    if (p.mouseX > x && p.mouseX < x + w && p.mouseY > y && p.mouseY < y + h) {
      a.execute();
    }
  }
}
class Terning {
  PApplet p; 
  int value; 
  int terningKast;

  Terning(int tempVal, PApplet p) {
    this.p = p; 
    value = tempVal;
  }

  public int kast() {
    /*
    Når man bruger value: 
    Så kan man kun få den laveste, 
    men ikke den højeste værdi som output, derfor skriver man "value+1"
    */
    terningeKast = (int)p.random(1, value+1); 
    sum += terningeKast;
    return terningeKast;
  }
}

  public void settings() {  size(500, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "GUI_KnapBib" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
