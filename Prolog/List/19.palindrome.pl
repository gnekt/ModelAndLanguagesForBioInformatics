% Write a Prolog program which takes an input list of characters
% (single character constant) and check if it is ‘palindrome’.

concat([],X,X).
concat([X|L1],L2,[X|LO]):- concat(L1,L2,LO).

reverse([],[]).
reverse([X|List], LO):- reverse(List,ReversedList), concat(ReversedList,X,LO).

% palindrome(IList):- Check if a given list of char is palindrome
palindrome(X):- reverse(X,X).