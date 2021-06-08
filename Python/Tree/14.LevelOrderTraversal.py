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

def height_tree(tree: Tree) -> int:
    """
    Perform the height of a given tree
    :param tree: the tree to be evaluated
    :return: an int value which represent the height of the tree
    """
    if tree is None:
        return -1
    left_heigth = height_tree(tree.left)
    right_heigth = height_tree(tree.right)
    return 1 + max([left_heigth, right_heigth])

def at_level(tree: Tree, level: int) -> list:
    if not tree:
        return []
    if level == 0:
        return [tree.elem]
    left = at_level(tree.left,level-1)
    right = at_level(tree.right, level - 1)
    return left + right

def level_order_traversal(tree: Tree)-> list:
    """
    Perform the level order traversing of a tree

    Args:
        tree:
            The source tree

    Returns:
        A list containing the tree node
    """
    _level_order = []
    height = height_tree(tree)
    i=0
    while i <= height:
        _level_order += at_level(tree,i)
        i += 1
    return _level_order

if __name__ == "__main__":
    print(level_order_traversal(Tree(1,Tree(2,Tree(3)),Tree(3))))