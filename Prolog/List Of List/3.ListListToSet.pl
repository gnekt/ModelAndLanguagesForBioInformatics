% Si scriva un predicato Prolog list_to_set a due argomenti
% che data una lista di liste come primo argomento leghi il secondo
% argomento a una lista nella quale sono state eliminate le liste
% ripetute o le loro permutazioni.
% Per esempio dato il goal:
% ?-list_to_set([[1,2,3],[3,1,2],[1]], Y).
% si vuole ottenere:
% yes
% Y=[[3,1,2],[1]]
% Per esempio dato il goal:
% ?-list_to_set([[1,2],[1,2],[1,2]], Y).
% si vuole ottenere:
% yes
% Y=[[1,2]]
% Si supponga dato il predicato permutation(X,Y) che verifica
% se una lista X è una permutazione della lista Y.


list_to_set([],[]):- !.
list_to_set([I|R],[I|R1]):- \+ member_list(I,R),!,list_to_set(R,R1).
list_to_set([I|R],R1):- list_to_set(R,R1).


member_list(X,[Y|_]):-permutation(X,Y),!.
member_list(X,[_|R]):-member_list(X,R).