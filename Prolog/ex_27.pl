%removeFirstNFromList(List,N,Output):- Remove N element from the Start of the List, return the result list into Output
removeFirstNFromList(_,0,_).
removeFirstNFromList([X|List],1,List).
removeFirstNFromList([X|List],N,Out):- N > 1, N1 is N-1, removeFirstNFromList(List,N1,Out).

%transfer(List,N,Output):- Copy N element from List to the Output List without removing it
transfer(X,0,[]).
transfer([X|L],N, [X|Lr] ):- N > 0, !, N1 is N-1, transfer(L,N1,Lr).

%rotate(List,N,Output):- Rotate a list N places to the left. 
% Examples:
% ?- rotate([a,b,c,d,e,f,g,h],3,X).
% X = [d,e,f,g,h,a,b,c]

% ?- rotate([a,b,c,d,e,f,g,h],-2,X).
% X = [g,h,a,b,c,d,e,f]
rotate(_,0,_).
rotate([],_,[]).
rotate(List,N,Output):- N>0, !,removeFirstNFromList(List,N,Head), transfer(List,N,Tail), append(Head,Tail,Output).
rotate(List,N,Output):- length(List,Len), Span is Len - abs(N),
    					removeFirstNFromList(List,Span,Head), 
    						transfer(List,Span,Tail), 
    						append(Head,Tail,Output).