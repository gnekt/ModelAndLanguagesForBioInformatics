% # Si scriva un programma Prolog che, prendendo in ingresso due
% # liste L1 e L2, restituisca in uscita due liste L3 e L4 tali che L3
% # contenga gli elementi di L1 che appartengono anche a L2, mentre
% # L4 contenga gli elementi di L1 che non appartengono a L2. Si
% # supponga disponibile il predicato member. Si dica inoltre se il
% # predicato così definito è ricorsivo tail.
% # Esempio:
% # ?-list_mem([a,r,t],[t,s,m,n,a],L3,L4).
% # restituirà L3=[a,t] e L4=[r].
list_member([],L2,[],[]):-!.
list_member([],[],[],[]):-!.
list_member([X|L1],L2,[X|RU],RI):- member(X,L2),!, list_member(L1,L2,RU,RI).
list_member([X|L1],L2,RU,[X|RI]):- list_member(L1,L2,RU,RI).