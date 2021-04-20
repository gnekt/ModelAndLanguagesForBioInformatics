% prod(List1,List2,OList):- Return a list on which each position is the product between equal Index of List1 and List2.
% Hp. the lenght must be equal, otherwise the overflow will be cutted.
% [1],[1,2,3] = [1]

prod([],_,[]):-!.
prod(_,[],[]):-!.
prod([X|L1],[Y|L2],[Z|L0]):-Z is X*Y,prod(L1,L2,L0),!.