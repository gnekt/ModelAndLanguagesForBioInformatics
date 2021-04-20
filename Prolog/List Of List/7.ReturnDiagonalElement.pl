% Return all the element in the diagonal of a matrix into a list

remove_1row([[]],[[]]):-!.
remove_1row([],[]):-!.
remove_1row([[_|L]|L1],[L|LF]):-remove_1row(L1,LF).

remove_1col([_],[[]]):-!.
remove_1col([_|L1],L1).

diag([[]],[]):-!.
diag([[X|L1]|L],[X|LF]):-remove_1row([[X|L1]|L],L0),remove_1col(L0,L01),diag(L01,LF).