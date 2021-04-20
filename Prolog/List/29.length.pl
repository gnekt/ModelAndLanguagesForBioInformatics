% countElement(List:i, Res:o) :- Return in Res the lenght of the list List.

countElement([],0).
countElement([X|List],Res):- countElement(List,RList), Res is RList + 1.