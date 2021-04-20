% Scrivere un predicato sumPairsList/2 in PROLOG per costruire, a partire da una lista di numeri
% interi, una lista di coppie in cui
% (a) il primo elemento di ogni coppia è uguale all’elemento di corrispondente posizione nella lista
% originale e
% (b) il secondo elemento di ogni coppia è uguale alla somma di tutti gli elementi antecedenti della
% lista originale.
% Ad esempio
% sumPairsList ( [ 1 , 1 , 1 , 9 ] , [ ( 1 , 0 ) , ( 1 , 1 ) , ( 1 , 2 ) , ( 9 , 3 ) ] )
% vero.
% Si assuma di chiamare sumPairsList/2 con il primo argomento sempre istanziato ad una lista
% di interi. Si utilizzi per le coppie il costruttore infisso (X,Y). Si suggerisce di ispirarsi al metodo
% dell’accumulatore.

strange_list([],[]):-!.
strange_list([X],[[X,0]]):-!.
strange_list([X,Y],[[X,0],[Y,X]]):-!.
strange_list([X,Y,Z|L],[[X,0],[Y,X],[Z,J]|L):-J is X+Y,
