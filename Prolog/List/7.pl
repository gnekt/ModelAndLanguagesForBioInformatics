% Dato un numero N ed una lista, ritorna una sottolista di L tale che la somma della sottolista sia uguale ad N

%sumListN(N,List:i,List:o):- Return a list which contain all the elements of the input list that summed together gives N.
sumListN(N,List,Out):- foundSolution(N,List,Out), sum_list(Out,Res), Res == N,!.
sumListN(N,List,[]).


foundSolution(N,[],[]).
foundSolution(N,[X|List],[X|OutL]):- N >= X, !, N1 is N-X, foundSolution(N1,List,OutL).
foundSolution(N,[X|List],OutL):- foundSolution(N,List,OutL).