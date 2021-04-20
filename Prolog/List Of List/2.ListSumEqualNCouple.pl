% Data una lista L1 e un numero intero N, scrivere un predicato
% Prolog domanda1(L1,N,L2) che restituisca in L2 la lista degli
% elementi di L1 che sono liste contenenti solo due valori interi
% positivi fra 1 e 9 la cui somma valga N.
% Esempio:
% :- domanda1([[3,1],5,[2,1,1],[3],[1,1,1],a,[2,2]],4,L2).
% yes, L2 = [[3,1], [2,2]]

% list_element_equalnumber(-List,-Number,-OutPut).

list_element_equalnumber([],N,[]):-!.
list_element_equalnumber([[X,Y]|L],N,[[X,Y]|LF]):-N is X+Y,list_element_equalnumber(L,N,LF),!.
list_element_equalnumber([_|L],N,LF):-list_element_equalnumber(L,N,LF).

