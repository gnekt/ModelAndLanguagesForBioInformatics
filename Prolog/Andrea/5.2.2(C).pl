%Si scriva un predicato che, date due liste L1 e L2, verifichi se L1 è
% una sottolistadi L2 (sia come subset,sia come sottolista propria).

subset1([],_):-!.
subset1([X|L1],[X|L2]):-subset1(L1,L2),!.
subset1([X|L1],[_|L2]):-subset1([X|L1],L2).

sublist([],_).
sublist([X],[X|_]).
sublist([X,Y|L1],[X,Y|L2]):- !,sublist(L1,L2).
sublist([X,Y|L1],[_,B|L2]):-sublist([X,Y|L1],[B|L2]).
