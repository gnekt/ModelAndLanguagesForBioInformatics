% member_list(-List,-ListList):- Return true if in ListList there are repetition or permutation of input List


member_list(X,[Y|_]):-permutation(X,Y),!.
member_list(X,[_|R]):-member_list(X,R).