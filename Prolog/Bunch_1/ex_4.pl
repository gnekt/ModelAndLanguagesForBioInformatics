partition(X,[],[],[]).
partition(X,[Y|LI],LO1,[Y|LO2]):- X < Y,partition(X,LI,LO1,LO2).
partition(X,[Y|LI],[Y|LO1],LO2):- X >= Y, partition(X,LI,LO1,LO2).
