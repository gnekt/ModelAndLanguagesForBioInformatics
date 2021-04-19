% mcd(N1,N2,TN):- Tn is the mcd of N1 and N2

mcd(A,A,A):-!.
mcd(A,B,M):- A<B,!, C is B-A, mcd(A,C,M).
mcd(A,B,M):- A>B, I is A-B, mcd(I,B,M).