class Tree:
    """
    Class which represent a tree as a node, it use more or less the same notation as we used in prolog,
    the only difference is that here we omit the nil value when there is an empty node.
    """

    def __init__(self, elem= None, left=None, right=None):
        """
        Constructor for a node, the sub-trees can be omitted if there is no value for these.
        :param value: The node payload.
        :param left: the left sub-tree (defined as another Node)
        :param right: the right sub-tree (defined as another Node)
        """
        self.left = left
        self.right = right
        self.elem = elem

def height_tree(tree: Tree) -> int:
    """
    Perform the height of a given tree
    :param tree: the tree to be evaluated
    :return: an int value which represent the height of the tree
    """
    if tree is None:
        return 0
    left_heigth = height_tree(tree.left)
    right_heigth = height_tree(tree.right)
    return 1 + max([left_heigth, right_heigth])

def diameter(tree: Tree) -> int:
    if not tree:
        return 0
    heigth_l = height_tree(tree.left)
    heigth_r = height_tree(tree.right)
    diameter_l = diameter(tree.left)
    diameter_r = diameter(tree.right)
    return max(heigth_r+heigth_l+1, max(diameter_r,diameter_l))

if __name__ == "__main__":
    print(diameter(Tree(1,Tree(1,Tree(1,Tree(1),Tree(1))),Tree(1))))