% findbt(-Value, -Tree):- Search for the first occurrence of Value in Tree, for more than one remove "!"

findbt(N,t(N,_,_)):-!.
findbt(N,t(_,T1,_)):-findbt(N,T1),!.
findbt(N,t(_,_,T2)):-findbt(N,T2),!.
