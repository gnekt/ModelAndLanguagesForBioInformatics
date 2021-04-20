sottoalbero(t(X,T1,T2),t(_,t(X,T1,T2),_)):-!.
sottoalbero(t(X,T1,T2),t(_,_,t(X,T1,T2))):-!.
sottoalbero(t(X,T1,T2),t(_,T3,_)):- sottoalbero(t(X,T1,T2),T3),!.
sottoalbero(t(X,T1,T2),t(_,_,T4)):- sottoalbero(t(X,T1,T2),T4),!.


