% countOccurrenceN(Value,Tree,Result):- Return the number of occurrence of an element in a BST Tree

countOccurrenceNBST(_,nil,0):-!.
countOccurrenceNBST(Root,t(Root,nil,nil),1):-!.
countOccurrenceNBST(Elem,t(Root,Left,Right),Res):-
    					Elem >= Root,!,  countOccurrenceNBST(Elem,Right,RRight),
    						Res is RRight+1.
countOccurrenceNBST(Elem,t(Root,Left,Right),Res):-
    		countOccurrenceNBST(Elem,Left,RLeft),
    			Res is RLeft.