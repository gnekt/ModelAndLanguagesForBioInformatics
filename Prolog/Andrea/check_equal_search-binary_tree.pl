equaltreeS(nil,nil):-!.
equaltreeS(t(X,nil,nil),t(X,nil,nil)):-!.
equaltreeS(t(X,T1,T2),t(X,T3,T4)):-equaltreeS(T1,T3),equaltreeS(T2,T4),!.
