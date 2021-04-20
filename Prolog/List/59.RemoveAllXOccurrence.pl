% delete_all_elX(-X,-IList,-OList):- Remove all the occurrence of X in IList and return the new one 
%   into OList

delete_all_elX(_,[],[]):-!.
delete_all_elX(X,[X|L],L0):-delete_all_elX(X,L,L0),!.
delete_all_elX(X,[Y|L],[Y|L0]):-delete_all_elX(X,L,L0).
