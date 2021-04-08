% Check if a tree is symmetric as node value

simmetryc(t(Root,nil,nil)).
simmetryc(t(Root,Left,Left)).
simmetryc(t(Root,Left,Right)):- simmetryc(Left),simmetryc(Right).