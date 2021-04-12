% # Si definisca un predicato in PROLOG chiamato averStud che
% # applicato a un numero di matricola di uno studente Matr e a una
% # lista di esami LE dia come risultato la media AV dei suoi voti.
% # Ogni esame sia rappresentato da un termine della lista LE della
% # forma esame(Matr,Esame,Voto). Si definisca prima la
% # versione ricorsiva e poi quella ricorsiva-tail.
% # Esempio:
% # ?-averStud(s1,[esame(s2,f1,30),
% # esame(s1,f1,27),esame(s3,f1,25),
% # esame(s1,f2,30)], AV).
% # yes, AV = 28.5

sumAndMean(Matricola,[],0,0):-!.
sumAndMean(Matricola,[esame(Id,Materia,Voto)|List],TotaleVoti,NumeroEsami):- Matricola = Id,!,
    	sumAndMean(Matricola,List,RecTot,RecNum), TotaleVoti is RecTot+Voto,NumeroEsami is RecNum+1.
sumAndMean(Matricola,[esame(Id,Materia,Voto)|List],TotaleVoti,NumeroEsami):- sumAndMean(Matricola,List,TotaleVoti,NumeroEsami).

averStud(Matricola,[],0,0):-!.
averStud(Matricola,List,Average):- sumAndMean(Matricola,List,TotalVoti,NEsami), Average is TotalVoti/NEsami.