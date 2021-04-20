% Check if 2 trees are isomorph


% isotree(Tree1:i,Tree2:i):- Return true if the two tree are isomorph
isotree(void,void).
isotree(tree(X,Left1,Right1),tree(X,Left2,Right2)) :-
isotree(Left1,Left2), isotree(Right1,Right2).
isotree(tree(X,Left1,Right1),tree(X,Left2,Right2)) :-
isotree(Left1,Right2), isotree(Right1,Left2).