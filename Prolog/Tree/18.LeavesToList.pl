leaves(nil,[]).
leaves(t(Root,nil,nil),[Root]).
leaves(t(Root,Left,Right),Res):- leaves(Left,Lres),
            leaves(Right,Rres), append(Lres,Rres,Res).