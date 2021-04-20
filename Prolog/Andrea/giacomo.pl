intersectionTrees(nil, _, []) :- !.
intersectionTrees(_, nil, []) :- !.

intersectionTrees(t(V, T1l, T1r), t(V, T2l, T2r), L) :- !, intersectionTrees(T1l, T2l, LOl), intersectionTrees(T1r, T2r, LOr), append(LOl, [V|LOr], L).

intersectionTrees(t(V1, T1l, T1r), t(V2, T2l, T2r), L) :- V1<V2, !, intersectionTrees(T1l, t(V2, T2l, T2r), LOl), intersectionTrees(T1r, t(V2, T2l, T2r), LOr), append(LOl, LOr, L).

intersectionTrees(t(V1, T1l, T1r), t(_, T2l, T2r), L) :- intersectionTrees(T2l, t(V1, T1l, T1r), LOl), intersectionTrees(T2r, t(V1, T1l, T1r), LOr), append(LOl, LOr, L).
