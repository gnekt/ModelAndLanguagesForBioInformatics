delete_all_elX(_,[],[]):-!.
delete_all_elX(X,[X|L],L0):-delete_all_elX(X,L,L0),!.
delete_all_elX(X,[Y|L],[Y|L0]):-delete_all_elX(X,L,L0).
