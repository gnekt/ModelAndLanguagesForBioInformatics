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

def print_in_order(tree: Tree) -> list:
    """
    Perform the "in-order" traversal of a given tree
    :param tree: the tree to be evaluated
    :return: a list which contains all the nodes of the tree
    """
    if tree is None:
        return []
    left = print_in_order(tree.left)
    right = print_in_order(tree.right)
    return left + [tree.elem] + right

def closest(tree: Tree, target: int) -> int:
    """
    Find the closest value of a given target value in a
    given non-empty Binary Search Tree (BST) of unique values.
    Args:
        tree:
        target:

    Returns:

    """
    _shallow_distance = list(
        map(lambda element: (abs(element-target),element),print_in_order(tree))
    )
    _shallow_distance.sort(key=lambda element: element[0])
    return _shallow_distance[0][1]

if __name__ == "__main__":
    print(closest(
            Tree(3, Tree(1,None,Tree(2)), Tree(6, Tree(4), Tree(7,None,Tree(9)))),10))