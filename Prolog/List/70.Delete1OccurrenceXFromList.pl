% delete_all_elX(-X,-IList,-OList):- Remove the first occurrence of X in IList and return the new one 
%   into OList

deleteFirst(_,[],[]):-!.
deleteFirst(A,[A|L],L):-!.
deleteFirst(A,[X|L],[X|L0]):-deleteFirst(A,L,L0).

