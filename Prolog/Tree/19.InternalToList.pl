internal(nil,[]).
internal(t(Root,nil,nil),[]).
internal(t(Root,Left,Right),Out):-internal(Left,Rleft),
    internal(Right,Rright), append([Root],Rleft,Rl1),
    append(Rl1,Rright,Out).