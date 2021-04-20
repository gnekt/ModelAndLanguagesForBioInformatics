nodiInterni(nil,0):-!.
nodiInterni(t(_,nil,nil),0):-!.

nodiInterni(t(_,TS,nil),N):-nodiInterni(TS,K),N is K+1,!.
nodiInterni(t(_,nil,TD),N):-nodiInterni(TD,K),N is K+1,!.

nodiInterni(t(_,TS,TD),N):-nodiInterni(TS,K),nodiInterni(TD,J),N is K+J+1.
