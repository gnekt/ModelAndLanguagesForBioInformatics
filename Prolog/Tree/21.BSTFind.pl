% Find a representation for binary trees.
% A binary tree is either empty or it is composed of a root element and two successors, which are binary trees themselves.
% Example 1
%   T1 = t(a,t(b,t(d,nil,nil),t(e,nil,nil)),t(c,nil,t(f,t(g,nil,nil),nil)))
% Example 2 binary tree that consists of a root node only:
%   T2 = t(a,nil,nil) or an empty binary tree: T3 = nil

% For practicing write a code to check if a structure is a tree
isATree(t(X,nil,nil)).
isATree(t(Root,Left,Right)):- isATree(t(Left,NodeL1,NodeR1)),
                                 isATree(t(Right,NodeL2,NodeR2)).

% Then write a program to look for a value N inside a binary search tree.
% The equal node are putted into the right sub-tree as hp.
% All Solution

bstmember(X,t(X,nil,nil)):-!.
bstmember(X,t(X,_,_)).
bstmember(X,t(Y,_,LR)):-X>=Y,!,bstmember(X,LR).
bstmember(X,t(_,LS,_)):-bstmember(X,LS).

% Only first Occurrences 

bstmember(X,t(X,nil,nil)):-!.
bstmember(X,t(X,_,_)):-!.
bstmember(X,t(Y,_,LR)):-X>=Y,!,bstmember(X,LR).
bstmember(X,t(_,LS,_)):-bstmember(X,LS).