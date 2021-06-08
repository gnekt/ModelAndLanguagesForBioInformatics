class Tree:
    """
    Class which represent a tree as a node,
        it use more or less the same notation as we used in prolog,
    the only difference is that here we omit the nil value
        when there is an empty node.
    """

    def __init__(self, elem, left=None, right=None):
        """
        Constructor for a node, the sub-trees can be omitted if
                        there is no value for these.
        :param value: The node payload.
        :param left: the left sub-tree (defined as another Node)
        :param right: the right sub-tree (defined as another Node)
        """
        self.left = left
        self.right = right
        self.elem = elem

def max_bst(tree: Tree):
    if tree:
        if tree.elem and not tree.right and not tree.left:
            return tree.elem
        max = max_bst(tree.right)
        if not max:
            return tree.elem
        return tree.elem if tree.elem > max else max

def min_bst(tree: Tree):
    if tree:
        if tree.elem and not tree.right and not tree.left:
            return tree.elem
        min = min_bst(tree.left)
        if not min:
            return tree.elem
        return tree.elem if tree.elem < min else min

if __name__ == "__main__":
    print(max_bst(Tree(5,Tree(3),Tree(6,None,Tree(12)))))
    print(min_bst(Tree(5, Tree(3), Tree(6, None, Tree(12)))))
    a=[1,2,3]
    print(a)
    b=a
    a.pop()
    print(b)