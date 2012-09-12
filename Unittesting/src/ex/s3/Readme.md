# Ülesanne 3.

Kirjuta lõpunid klass LinkedList kasutades testidel põhinevat arendust (kirjutades 
testid enne koodi). Meetodid add(), remove() ja asArrayList() on näitena juba tehtud.

Enne koodi kirjutamist pane kirja võimalikud testimise tsenaariumid 
("loo pinu ja kontrolli ..." jne) nagu seda on tehtud eelmise ülesande juures.

Klassi LinkedList Operatsioonid:

void add(Integer i) - lisab elemendi listi lõppu
Integer remove() - eemaltab listi viimase elemendi ja tagastab selle
List asArrayList() - tagastab listi elemendid java.util.ArrayList-ina
int size() - tagastab listi pikkuse
void addAll(LinkedList l) - lisab argumentlisti olemasoleva listi lõppu
void add(int index, Integer i) - lisab elemendi listi, positsioonile index.
  Operatsiooni keerukus peab olema O1.
Integer remove(int index) - eemaltab listi elemendi positsioonilt index ja 
  tagastab selle.
