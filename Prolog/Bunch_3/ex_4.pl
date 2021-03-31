% Write a Prolog program for checking if a list of integers is in ascending order


max([X],[X]).
max([X|List],X):- max(List,MaxList), MaxList =< X. 
max([X|List],MaxList):- max(List,MaxList), MaxList > X. 

ascending([X]).
ascending([First|List]):- max(List,Max), 
                                    First >= Max, ascending(List).