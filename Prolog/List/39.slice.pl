% Extract a slice from a list.
% Given two indices, I and K, the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included). Start counting the elements with 1.

% Example:
% ?- slice([a,b,c,d,e,f,g,h,i,k],3,7,L).
%  L = [c,d,e,f,g]

%removeFirstNFromList(List,N,Output):- Remove N element from the Start of the List, return the result list into Output
removeFirstNFromList(_,0,_).
removeFirstNFromList([X|List],1,List).
removeFirstNFromList([X|List],N,Out):- N > 1, N1 is N-1, removeFirstNFromList(List,N1,Out).

%transfer(List,N,Output):- Copy N element from List to the Output List without removing it
transfer(X,0,[]).
transfer([X|L],N, [X|Lr] ):- N > 0, !, N1 is N-1, transfer(L,N1,Lr).

%slice(List,I,K,L):- Given two indices, I and K, the slice is the list containing 
%							the elements between the I'th and K'th element
%								 of the original list (both limits included).
%								  Start counting the elements with 1.
slice(List,I,K,L):- N1 is I-1,removeFirstNFromList(List,N1,Lout), N2 is (K-I)+1,transfer(Lout,N2,L).