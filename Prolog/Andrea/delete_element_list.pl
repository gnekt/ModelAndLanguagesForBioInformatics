delete1(_,[],[]):-!.
delete1(A,[A|L],L):-!.
delete1(A,[X|L],[X|L0]):-delete1(A,L,L0).


delete_all(_,[],[]):-!.
delete_all(A,[A|L],L0):-!,delete_all(A,L,L0).
delete_all(A,[X|L],[X|L0]):-delete_all(A,L,L0).
