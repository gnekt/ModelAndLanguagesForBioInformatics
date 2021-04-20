% Write a (Prolog) program which computes the vectorial product of two
% input lists of integers
% having the same length.

% vectorProduct(List1,List2,Output):- Return the vector product of 2 lists

vectorProduct([],[],0).
vectorProduct([X],[Y],Result):- Result is X*Y.
vectorProduct([X|L1],[Y|L2],Result):- vectorProduct(L1,L2,DotResult), 
                                        Result is DotResult+(X*Y).