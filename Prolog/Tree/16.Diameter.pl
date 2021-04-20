%diameter(Tree,Diameter):- Return the diameter of a given Tree, the diameter is the maximum path from deepest-leaf-sub left three 
							% to deepest-leaf-sub right three
heightBinaryTree(nil,0).
heightBinaryTree(t(Root,Left,Right),Result):- heightBinaryTree(Left,LeftResult),
                                                heightBinaryTree(Right,RightResult),
                                                    max_list([LeftResult,RightResult],HeightTree),
                                                        Result is HeightTree+1.

diameter(nil,0).
diameter(t(Root,Left,Right), Res):- heightBinaryTree(Left,HLeft), 
                                        heightBinaryTree(Right,HRight),
                                            diameter(Left,DLeft),
                                                diameter(Right,DRight),
                                                    max_list([DRight,DLeft], DMax),
                                                        Diameter is HLeft+HRight+1,
                                                            max_list([DMax,Diameter],Res).