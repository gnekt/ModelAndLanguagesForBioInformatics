% Si assuma di aver scritto un predicato generateList/1 che costruisce una lista. Utilizzando solo
% generateList/1 e append/3 scrivere un goal per determinare se la lista prodotta da generateList/1
% contiene (in ordine) i numeri 6 e 2.
% Si provi la correttezza della soluzione con il seguente programma
% generateList ([ ,1 , ] ) .
% generateList ([ ,6 , ,1 ,2 , , 0 ] ) .
% e successivamente con
% generateList ( ).

control_element_list(X,Y,L):-append(_,[X|L2],L),member(Y,L2),!.
