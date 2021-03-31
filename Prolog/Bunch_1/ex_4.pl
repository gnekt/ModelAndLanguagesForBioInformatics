% Write a (Prolog) program that taken one list L of integers and one
% integer value N, divides the elements of L in two lists L1 and L2 such that
% all elements less or equal than N are in L1 and in L2 all the
% others.

partition(X,[],[],[]).
partition(X,[Y|LI],LO1,[Y|LO2]):- X < Y,partition(X,LI,LO1,LO2).
partition(X,[Y|LI],[Y|LO1],LO2):- X >= Y, partition(X,LI,LO1,LO2).
