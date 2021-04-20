% Scrivere un programma in PROLOG per la seguente relazione: min2Odd(Xs,M,N) se e solo se M e
% N sono i 2 minori elementi dispari di Xs (se esistono). Ad esempio
% min2Odd ( [ 2 , 3 , 4 , 6 , 8 , 7 , 5 ] , 3 , 5 )

dispari_list([],[]):-!.
dispari_list([X|L],[X|LF]):-1 is X mod 2,!,dispari_list(L,LF).
dispari_list([_|L],LF):-dispari_list(L,LF).

min_element([X],X):-!.
min_element([X|L],X):-min_element(L,Y),X<Y,!.
min_element([_|L],Y):-min_element(L,Y).

delete1(_,[],[]):-!.
delete1(X,[X|L],L):-!.
delete1(X,[Y|L],[Y|L0]):-delete1(X,L,L0).


min2Odd(L,X,Y):-X=<Y,!,dispari_list(L,L0),min_element(L0,X),delete1(X,L0,LF),min_element(LF,Y).
min2Odd(L,X,Y):-dispari_list(L,L0),min_element(L0,Y),delete1(Y,L0,LF),min_element(LF,X).

