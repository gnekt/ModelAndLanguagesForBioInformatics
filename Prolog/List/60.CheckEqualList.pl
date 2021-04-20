% listeu(-IList1,-IList2):- Check if IList1 and IList2 are equal. 

listeu([],[]).
listeu([X],[X]):-!.
listeu([X|L1],[X|L2]):-listeu(L1,L2),!.
