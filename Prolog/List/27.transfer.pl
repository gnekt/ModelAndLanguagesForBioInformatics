% transfer(Elem,List,Remain,Out):- Return all the consecutive element in List equal to Elem and copy it into the Out list, 
%                                   all the remaining element will be putted into the Remain list.
transfer(X,[],[],[X]).
transfer(X,[Y|List],[Y|List],[X]):- X \= Y, !,transfer(X,List,_,_).
transfer(X,[X|List],Ys,[X|Res]):-!, transfer(X,List,Ys,Res).