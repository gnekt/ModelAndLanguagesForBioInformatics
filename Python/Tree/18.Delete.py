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

def from_in_order_to_tree(list_tree_representation: list) -> Tree:
    """
    Return a representation of the inorder tree as an instance of Node class
    :param list_tree_representation: the inorder list of element
    :return: a tree
    """
    if not list_tree_representation:
        return None
    if len(list_tree_representation) == 1:
        return Tree(list_tree_representation[0])
    return Tree(
                list_tree_representation
                    [int((len(list_tree_representation)) / 2)],
                from_in_order_to_tree(list_tree_representation
                    [:(int((len(list_tree_representation)) / 2))]),
                from_in_order_to_tree(list_tree_representation
                    [(int((len(list_tree_representation)) / 2)) + 1:]))

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

def delete_bst(tree: Tree, target: int) -> Tree:
    """

    Args:
        tree:
        target:

    Returns:

    """
    _shallow_list = print_in_order(tree)
    try:
        _shallow_list.remove(target)
    except Exception as ex:
        return tree
    return from_in_order_to_tree(_shallow_list)

if __name__ == "__main__":
    print(delete_bst(Tree(3, Tree(1,None,Tree(2)), Tree(6, Tree(4), Tree(7,None,Tree(9)))),3))