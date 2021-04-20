intersection1(nil,nil,[]):-!.
intersection1(t(X,nil,nil),t(X,nil,nil),[X]):-!.
intersection1(t(X,T1,T2),t(X,T3,T4),[X|L0]):-intersection1(T1,T3,L1),intersection1(T2,T4,L2),append(L1,L2,L0),!.
intersection1(t(_,T1,T2),t(_,T3,T4),L0):-intersection1(T1,T3,L1),intersection1(T2,T4,L2),append(L1,L2,L0).
