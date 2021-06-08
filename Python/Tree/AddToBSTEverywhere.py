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

def add_node_bst_2(tree: Tree, node: int) -> Tree:
    """
    Add a node to bst in every position of the tree, not forced in a leaf

    Args:
        tree: Tree
            The source tree.
        node:
            The node that we want add.

    Returns:
        The new tree.
    """
    _in_order_list = print_in_order(tree)
    i=0
    while i < len(_in_order_list):
        if _in_order_list[i]>node:
            break
        i+=1
    _in_order_list.insert(i,node)
    return from_in_order_to_tree(_in_order_list)

if __name__ == "__main__":
    print(print_in_order(add_node_bst_2(Tree(3, Tree(1,None,Tree(2)), Tree(6, Tree(4), Tree(7,None,Tree(9)))),5)))