% Scrivere un predicato Prolog che fornisce l’ultimo elemento di una
% lista.

last_element([X],X):-!.
last_element([_|L],N):-last_element(L,N).

% Scrivere un predicato Prolog che fornisce gli ultimi 2 elementi di una
% lista.

last_two_element([X,Y],[X,Y]):-!.
last_two_element([_|L],N):-last_two_element(L,N).
