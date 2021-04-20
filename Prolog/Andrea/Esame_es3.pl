append1([],L,L).
append1(L,[],L).
append1([X|L],L1,[X|L0]):-append1(L,L1,L0).

orderTrees(t(V1,T1l,T1r),t(V2,T2l,T2r),t(V1,T1l,T1r),t(V2,T2l,T2r)):-V1<V2,!.
orderTrees(t(V1,T1l,T1r),t(V2,T2l,T2r),t(V2,T2l,T2r),t(V1,T1l,T1r)).

intersectionTrees(nil,_,[]):-!.
intersectionTrees(_,nil,[]):-!.

intersectionTrees(t(V,T1l,T1r),t(V,T2l,T2r),L):-!,intersectionTrees(T1l,T2l,LOl),intersectionTrees(T1r,T2r,LOr),append1(LOl,[V|LOr],L).

intersectionTrees(t(V1t,T1lt,T1rt),t(V2t,T2lt,T2rt),L):-orderTrees(t(V1t,T1lt,T1rt),t(V2t,T2lt,T2rt),t(V1,T1l,T1r),t(V2,T2l,T2r)),intersectionTrees(t(V1,T1l,nil),T2l,LOl),intersectionTrees(T1r,t(V2,nil,T2r),LOr),intersectionTrees(T1r,T2l,LOc),append1(LOl,LOc,LOtemp),append1(LOtemp,LOr,L).
