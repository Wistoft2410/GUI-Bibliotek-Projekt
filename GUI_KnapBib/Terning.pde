class Terning {
  PApplet p; 
  
  int value; 

  Terning(int tempVal,PApplet p) {
    this.p = p; 
    value = tempVal;
  }

  void kast() {
    terningeKast = (int)p.random(1, value);
    sum += terningeKast;
  }
}
