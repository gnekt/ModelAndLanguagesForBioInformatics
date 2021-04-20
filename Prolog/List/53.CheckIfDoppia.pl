
lunghezza([],0).
lunghezza([A|B],N):- lunghezza(B,N1), N is N1+1.

%definiamo il predicato listadoppia

% doppia(-List1, -List2):- Che sia vero se List1 ha lunghezza doppia di List2.
doppia(X,Y):- lunghezza(X,A), lunghezza(Y,B), A is 2*B.