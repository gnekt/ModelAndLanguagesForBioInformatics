remove_1row([[]],[[]]):-!.
remove_1row([],[]):-!.
remove_1row([[_|L]|L1],[L|LF]):-remove_1row(L1,LF).

remove_1col([_],[[]]):-!.
remove_1col([_|L1],L1).

diag([[]],[]):-!.
diag([[X|L1]|L],[X|LF]):-remove_1row([[X|L1]|L],L0),remove_1col(L0,L01),diag(L01,LF).

sum_list_el([[]],0):-!.
sum_list_el([X|L],N):- sum_list_el(L,M),N is M+X.

sum_diag([[]],0):-!.
sum_diag([[X|L1]|L],N):-diag([[X|L1]|L],[X|LF]),sum_list_el([X|LF],N).
