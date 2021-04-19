% subset(ListI,ListO):- Ritorna true se gli elementi di ListI sono contenuti in O preservando solo 
	%						l'ordinamento
    subset([],_).
subset([X|L1],[Y|L2]):- X \== Y, !, subset([X|L1],L2).
subset([X|L1],[Y|L2]):- subset(L1,L2).

% sublist(ListI,ListO):- Ritorna true se gli elementi di ListI sono contenuti in O preservando 
%						l'ordinamento e susseguenza degli elementi
% 	sublist([1,2],[4,5,2,1,3]). False
% 	sublist([1,2],[4,5,1,2,3]). True
% 	sublist([1,2],[4,5,1,,4,2,3]). False

sublist([],_).
sublist([X],[X|_]).
sublist([X,Y|L1],[X,Y|L2]):- !,sublist(L1,L2).
sublist([X,Y|L1],[A,B|L2]):- [X,Y] \== [A,B], sublist([X,Y|L1],[B|L2]).