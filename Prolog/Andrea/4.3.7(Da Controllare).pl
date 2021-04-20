bst_lista_ordinata(nil,[]):-!.
bst_lista_ordinata(t(X,TS,TD),LF):-bst_lista_ordinata(TS,L1),bst_lista_ordinata(TD,L2),append(L1,[X|L2],LF).

list_tree([],[]):-!.
list_tree([T1|T],[L1|LF]):-bst_lista_ordinata(T1,L1),list_tree(T,LF).

sum_list1([],0):-!.
sum_list1([X|L],Z):-sum_list1(L,N),Z is N+X.

list_sum_lists([],[]):-!.
list_sum_lists([L1|L],[X|LF]):-sum_list1(L1,X),list_sum_lists(L,LF).

compare_element([]):-!.
compare_element([_]):-!.
compare_element([X,X|L]):-compare_element(X|L).

same_sum_element_tree([]):-!.
same_sum_element_tree([_]):-!.
same_sum_element_tree([T1|T]):-list_tree([T1|T],[L1|L]),list_sum_lists([L1|L],LF),compare_element(LF).

