% Modellare in Prolog la funzione erdosnum(), date le seguenti
% specifiche:
% 1. Erdos ha erdosnum=0
% 2. X ha come erdosnum 1 + il minimo tra gli erdosnum delle
% persone con cui ha scritto almeno una pubblicazione.
% Scrivere un programma Prolog erdosnum(X,N) in cui: X `e il
% soggetto di cui si vuole conoscere il numero di Erdos; N `e la
% distanza di Erdos tra i due.
% Scrivere un programma Prolog erdosnum(X,Y,N) in cui:X `e il
% soggetto di cui si vuole conoscere la distanza da Y; Y `e il
% ”mitico” ricercatore

pubblicazione(erdos,brachman).
pubblicazione(erdos,einstein).
pubblicazione(erdos,konolige).
pubblicazione(brachman,nardi).
pubblicazione(nardi,settembre).
%pubblicazione(erdos,settembre).
pubblicazione(brachman,erdos).
pubblicazione(einstein,erdos).
pubblicazione(konolige,erdos).
pubblicazione(nardi,brachman).
pubblicazione(settembre,nardi).
%pubblicazione(settembre,erdos).
%pubblicazione(X,Y):-pubblicazione(Y,X).

erdosnum(X,Limite):-erdosnumcicli(X,0,Limite).
erdosnumcicli(X,Limite,Limite):- erdosN(X,Limite).
erdosnumcicli(X,Limite,N1):- Limite < 10, L is Limite+1, erdosnumcicli(X,L,N1).
erdosN(erdos,0).
erdosN(X,Lung):- Lung>0,
                pubblicazione(X,Z), L is Lung-1,
                erdosN(Z,L).