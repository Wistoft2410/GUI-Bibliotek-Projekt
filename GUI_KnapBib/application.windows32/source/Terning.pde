class Terning {

  int value; 

  Terning(int tempVal) {
    value = tempVal;
  }

  void kast() {
    terningeKast = int(random(1, value));
    sum += terningeKast;
  }
}
