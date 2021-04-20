% Check if two lists are disjoint

lists_common_notcommon([],_,[],[]).
lists_common_notcommon([X|L1],L2,[X|L01],L02):-member(X,L2),!,lists_common_notcommon(L1,L2,L01,L02).
lists_common_notcommon([X|L1],L2,L01,[X|L02]):-lists_common_notcommon(L1,L2,L01,L02).

% disjoint(L1,L2):- check if the 2 lists are disjoint

disjoint(L1,L2):- lists_common_notcommon(L1,L2,OutCommon,OutNotCommon), length(OutCommon,0).