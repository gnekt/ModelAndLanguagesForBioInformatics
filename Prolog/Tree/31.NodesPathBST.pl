% pathBST(Elem,Tree,Path):- Return the minimum path as array of node (with the last element with Elem) 
%                   of a BST.
pathBST(Elem,Tree,Path):- searchPathBST(Elem,Tree,Path), member(Elem,Path),!.
pathBST(Elem,Tree,[]).

searchPathBST(_,nil,[]).
searchPathBST(Elem,t(Elem,_,_),[Elem]):-!.
searchPathBST(Elem,t(Root,_,Right),[Root|Path]):- Elem > Root, !, searchPathBST(Elem,Right,Path).
searchPathBST(Elem,t(Root,Left,_),[Root|Path]):- searchPathBST(Elem,Left,Path).