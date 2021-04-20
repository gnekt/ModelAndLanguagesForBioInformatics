prod([],_,[]):-!.
prod(_,[],[]):-!.
prod([X|L1],[Y|L2],[Z|L0]):-Z is X*Y,prod(L1,L2,L0),!.

