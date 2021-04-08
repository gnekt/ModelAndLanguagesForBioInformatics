% Check if a tree is perfect balanced

max(N1,N2,N1):- N1 >= N2.
max(N1,N2,N2):- N1 < N2.

heightBinaryTree(nil,0).
heightBinaryTree(t(Root,Left,Right),Result):- heightBinaryTree(Left,LeftResult),
                                                heightBinaryTree(Right,RightResult),
                                                    max(LeftResult,RightResult,HeightTree),
                                                    Result is HeightTree+1.

absDifference(X,X,0).
absDifference(X,Y,R):- X < Y, R is Y-X.
absDifference(X,Y,R):- X > Y, R is X-Y.

perfectBalanced(nil).
perfectBalanced(t(Root,Left,Right)):- perfectBalanced(Left), perfectBalanced(Right),heightBinaryTree(Left,RL), heightBinaryTree(Right,RR), absDifference(RL,RR,Result),Result = 0.