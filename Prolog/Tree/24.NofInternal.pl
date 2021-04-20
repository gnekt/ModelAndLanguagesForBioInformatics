% Dare un programma in Prolog che definisca la relazione
% nodiInterni tra un albero binario e un naturale, tale che il numero
% naturale indichi il numero di nodi interni (non foglie) dell'albero

countInternalNodes(nil,0):-!.
countInternalNodes(t(_,nil,nil),0):-!.
countInternalNodes(t(Root,Left,Right),Out):-countInternalNodes(Left,RLeft),
    											countInternalNodes(Right,RRight),
    												Out is 1+RLeft+RRight.
