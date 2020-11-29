# GUI-Bibliotek Projekt
I mappen "GUIBibliotek" finder man kode for både bibliotek og klient-eksempel. Bibliotek virker på følgende måde bla. bla. 

I mappen "AnvendBib" ligger en jar-fil, importer denne i dit projekt for at bruge mit bibliotek. Når Jar-filen er importeret kan knapper lavevs på følgende måde, se nedenstående eksempel:

## Eksempel: 
```java
GUI_KnapBib.Button NyKnap = (new GUI_KnapBib()).new Button(175, 10, 150, 50, "Slå med 420s terning!", this);

```
og 
```java
NyKnap.addAction(new GUI_KnapBib.Action() {   
    
    GUI_KnapBib b = new GUI_KnapBib() ;
    GUI_KnapBib.Terning t420 = b.new Terning(420, AnvendBib.this);
    
    public void execute() {
      t420.kast(); 
      sum += t420.value;
    }
  }
  );
}
```
