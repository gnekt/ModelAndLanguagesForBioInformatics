concat([],X,X).
concat([X|L1],L2,[X|LO]):- concat(L1,L2,LO).


findElementInATree(Target,t(Target,LeftRoot,RightRoot)).
findElementInATree(Target,t(Root,LeftRoot,RightRoot)):- Target > Root,
                                                        findElementInATree(Target,RightRoot).

findElementInATree(Target,t(Root,LeftRoot,RightRoot)):- Target < Root,
                                                        findElementInATree(Target,LeftRoot).

intersectionTrees(nil,T1,[]).
intersectionTrees(T,nil,[]).
intersectionTrees(nil,nil,[]).
intersectionTrees(t(Root,nil,nil),T,[Root]):- findElementInATree(Root,T).
intersectionTrees(t(Root1,Left1,Right1),T,RS):- intersectionTrees(Left1,T,RL), intersectionTrees(Right1,T,RR),concat(RL,RR,RS), \+ findElementInATree(Root1,T).
intersectionTrees(t(Root1,Left1,Right1),T,Result):- intersectionTrees(Left1,T,RL), intersectionTrees(Right1,T,RR),concat(RL,RR,RS), findElementInATree(Root1,T).