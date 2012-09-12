Kirjuta klass Stack (pinu) ning seda testivad unittestid. Testid kirjutage enne
programmi koodi. Mitte kõik testid korraga vaid vaheldumisi test, sellele vastav
kood järgmine test jne.

Klassi Stack Operatsioonid:

void push(Integer i) - lisab argumendi pinusse
Integer pop() - tagastab pinust pealmise elemendi ja eemaldab selle pinust
Integer peek() - tagastab pinust pealmise elemendi
Integer size() - tagastab pinus olevate elementide arvu. 

Sisemise andmestruktuurina kasutada masiivi (array), mitte listi.

testida tuleb vähemalt järgmisi juhte:

* loo pinu ja kontrolli, et selles on 0 elementi.
* loo pinu, lisa (push) kaks elementi ja kontrolli, et selles on 2 elementi (size == 2).
* loo pinu, lisa (push) kaks elementi, võta (pop) kaks elementi ja kontrolli, et 
  pinus on 0 elementi.
* loo pinu, lisa (push) kaks elementi, võta (pop) kaks elementi ja kontrolli, et 
  need on needsamad lisatud elemendid.
* loo pinu, lisa (push) kaks elementi, vaata pealmist elementi (peek) ja kontrolli, 
  et see on õige element.
* loo pinu, lisa (push) kaks elementi, vaata pealmist elementi ja kontrolli, et
  pinus on 2 elementi.
* loo pinu, lisa (push) kaks elementi, vaata pealmist elementi, vaata uuesti pealmist 
  elementi ja kontrolli, et see on seesama, mis esimesel korral.
* loo pinu, võta (pop) üks element ja kontrolli, et pinu viskab IllegalStateException-i.
* loo pinu, vaata pealmist elementi ja kontrolli, et pinu viskab IllegalStateException-i.
