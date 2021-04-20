strange_list([],[]):-!.
strange_list([X],[[X,0]]):-!.
strange_list([X,Y],[[X,0],[Y,X]]):-!.
strange_list([X,Y,Z|L],[[X,0],[Y,X],[Z,J]|L):-J is X+Y,
