% Dati due alberi A1 ed A2 si scriva un predicato che verifica se A1
% è un sottoalbero di A2.

sottoalbero(t(X,T1,T2),t(_,t(X,T1,T2),_)):-!.
sottoalbero(t(X,T1,T2),t(_,_,t(X,T1,T2))):-!.
sottoalbero(t(X,T1,T2),t(_,T3,_)):- sottoalbero(t(X,T1,T2),T3),!.
sottoalbero(t(X,T1,T2),t(_,_,T4)):- sottoalbero(t(X,T1,T2),T4),!.


