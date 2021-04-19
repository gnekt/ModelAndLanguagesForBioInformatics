% Add an element into a bst, without modifying the structure of the
% bst, the only minimum spec. is that the tree MUST BE balanced.
% Examples
% addNodeInBst(t(4, t(2, t(1, nil, nil), nil), t(9, t(5, nil, nil), nil)),6,X).
% X = t(4, t(2, t(1, nil, nil), nil), t(6, t(5, nil, nil), t(9, nil, nil))).

merge([],[],[]).
merge([],X,X).
merge(Y,[],Y).
merge([X|L1],[Y|L2],[X|L0]):- X =< Y, merge(L1,[Y|L2],L0).
merge([X|L1],[Y|L2],[Y|L0]):- X > Y, merge([X|L1],L2,L0).

%removeFirstNFromList(List,N,Output):- Remove N element from the Start of the List, return the result list into Output
removeFirstNFromList(N,0,N).
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

% inorder(Tree,List):- Return a In-order representation of a given tree
inorder(nil,[]):-!.
inorder(t(Root,nil,nil),[Root]):-!.
inorder(t(Root,Left,Right),Out):-
    inorder(Left,LeftR),
    inorder(Right,RightR),
    append(LeftR,[Root],LO1),
    append(LO1,RightR, Out).

% get_at(Value,List,Index,Out):- Return the value positioned at the index position in the list, return the output list unmodified.
get_at(X,[X|L],1,[X|L]).
get_at(X,[Y|L],N,[Y|Lr]):- N>1, N1 is N-1, get_at(X,L,N1,Lr).


%fromListToBst(List,Tree):- Return a tree representation of an in-order list.
fromListToBst([],nil):-!.
fromListToBst([Root],t(Root,nil,nil)):-!.
fromListToBst([Elem,Root],t(Root,t(Elem,nil,nil),nil)):-Elem < Root,!.
fromListToBst([Root,Elem],t(Root,nil,t(Elem,nil,nil))):-!.

fromListToBst(List, t(Root,Left,Right)):-
	length(List,Len), mod(Len,2) =:= 0, !,Mid is Len/2, 
    get_at(Root,List,Mid,Out),
    LeftBoud is Mid-1,
    RightBoud is Mid+1,
    slice(Out,1,LeftBoud,LeftSlice),
    slice(Out,RightBoud,Len,RightSlice),
    fromListToBst(LeftSlice,Left),
    fromListToBst(RightSlice,Right).

fromListToBst(List, t(Root,Left,Right)):-
	length(List,Len), Mid is (Len+1)/2, 
    get_at(Root,List,Mid,Out),
    LeftBoud is Mid-1,
    RightBoud is Mid+1,
    slice(Out,1,LeftBoud,LeftSlice),
    slice(Out,RightBoud,Len,RightSlice),
    fromListToBst(LeftSlice,Left),
    fromListToBst(RightSlice,Right).

% addNodeInBst(Tree,Value,NewTree):- Given a bst tree and a value to add, return a new tree with the value added (also not in a leaf),
%                                       respecting the original structure and the rule of a BST.
%                                           Condition to work is that the starting tree is balanced.
addNodeInBst(Tree,Value,NewTree):- inorder(Tree,OutList), merge(OutList,[Value],NewList),
    									fromListToBst(NewList,NewTree).
    								