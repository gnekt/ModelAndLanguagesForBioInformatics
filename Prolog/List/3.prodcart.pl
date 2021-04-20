% Scrivere una procedura che, dati due insiemi rappresentati mediante liste,
% ne costruisca il prodotto cartesiano.

%prodottoElementoPerList(Num,List,OutList):- Ritorna in OutList il prodotto di Num per ogni singolo elemento di List
prodottoElementoPerList(X,[],[]).
prodottoElementoPerList(X,[Y|List],[Res|ListO]):- Res is X*Y, prodottoElementoPerList(X,List,ListO).


%prodottoCartesiano(List1,List2,OutList):- Ritorna in OutList il prodotto cartesiano tra List1 e List2
prodottoCartesiano([],_,[]).
prodottoCartesiano([X|List1],List2,Out):- prodottoElementoPerList(X,List2,Res), 
    										prodottoCartesiano(List1,List2,OutR),
    											append(Res,OutR,Out).