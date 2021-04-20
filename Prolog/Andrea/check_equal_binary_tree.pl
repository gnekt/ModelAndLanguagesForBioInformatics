equaltree(nil,nil):-!.
equaltree(t(X,nil,nil),t(X,nil,nil)):-!.
equaltree(t(X,T1,T2),t(X,T3,T4)):-equaltree(T1,T3),equaltree(T2,T4),!.
equaltree(t(X,T1,T2),t(X,T3,T4)):-equaltree(T1,T4),equaltree(T2,T3).
