pari(N):-0 is N mod 2.

sum_elementipari_tree(nil,0):-!.
sum_elementipari_tree(t(X,TS,TD),N):-pari(X),!,sum_elementipari_tree(TS,K),sum_elementipari_tree(TD,J),N is K+J+X.
sum_elementipari_tree(t(_,TS,TD),N):-sum_elementipari_tree(TS,K),sum_elementipari_tree(TD,J),N is K+J.




