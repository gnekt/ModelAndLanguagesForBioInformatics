%Find the height of a binary tree

% heightBinaryTree(T,N)-: "N is the height of a binary tree"

max(N1,N2,N1):- N1 >= N2.
max(N1,N2,N2):- N1 < N2.

height(nil,0).
height(t(_,Left,Right),Result):- height(Left,LeftResult),
                                        height(Right,RightResult),
                                                    max(LeftResult,RightResult,HeightTree),
                                                    Result is HeightTree+1.