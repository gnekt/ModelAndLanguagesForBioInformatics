% Write a Prolog program which computes the fibonacci numbers.

fibonacci(0,0).
fibonacci(1,1).
fibonacci(X,Y):- X>1, 
					N1 is X-1, 
					N2 is X-2,
						fibonacci(N1,F1),
						fibonacci(N2,F2),
			 		Y is F1+F2.
