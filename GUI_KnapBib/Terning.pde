class Terning {
  PApplet p; 
  int value; 
  int terningKast;

  Terning(int tempVal, PApplet p) {
    this.p = p; 
    value = tempVal;
  }

  int kast() {
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
