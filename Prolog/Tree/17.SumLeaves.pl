

sumLeaves(nil,0).
sumLeaves(t(Root,nil,nil),Root).
sumLeaves(t(Root,Left,Right),Res):- sumLeaves(Left,Lres),
                                        sumLeaves(Right,Rres),Res is Lres+Rres.