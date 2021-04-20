
% countOccurrenceN(Value,Tree,Result):- Return the number of occurrence of an element in a Tree

countOccurrenceN(_,nil,0):-!.
countOccurrenceN(Root,t(Root,nil,nil),1):-!.
countOccurrenceN(Elem,t(Root,Left,Right),Res):-
    	Elem \== Root, !, countOccurrenceN(Elem,Left,RLeft),
    		countOccurrenceN(Elem,Right,RRight),
    			Res is RLeft+RRight.
countOccurrenceN(Elem,t(Root,Left,Right),Res):-
    	countOccurrenceN(Elem,Left,RLeft),
    		countOccurrenceN(Elem,Right,RRight),
    			Res is RLeft+RRight+1.