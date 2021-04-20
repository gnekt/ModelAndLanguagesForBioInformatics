confronto(nil,nil).
confronto(t(X,Left,Right),t(X,Left,Right)).
confronto(t(X,Left1,Right1),t(Y,Left2,Right2)):-X==Y,confronto(Left1,Left2),confronto(Right1,Right2).


