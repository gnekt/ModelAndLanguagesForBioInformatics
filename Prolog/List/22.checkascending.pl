% Write a Prolog program for checking if a list of integers is in ascending order


min([X],[X]).
min([X|List],X):- min(List,MinList), MinList >= X. 
min([X|List],MinList):- min(List,MinList), MinList < X. 

ascending([X]).
ascending([First|List]):- min(List,Min), 
                            First =< Min,
                                ascending(List).
