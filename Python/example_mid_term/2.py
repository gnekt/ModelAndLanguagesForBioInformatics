# Write a Python function, which, given two input binary trees of integers T1 and T2, defined following
# class Tree:
#  def __init__(self, elem=None, left=None, right=None):
#  self.elem = elem
#  self.left = left
#  self.right = right
# returns a boolean value True if and only if all values in T1 appear at least twice in T2.
# The value False is returned otherwise.
# So, for instance if T1= Tree(11,Tree(9,Tree(2))),
# T2= Tree(9,Tree(2),Tree(9,Tree(2,Tree(11),Tree(5)),Tree(11))), returns True.
class Tree:
    """
    Class which represent a tree as a node, it use more or less the same notation as we used in prolog,
    the only difference is that here we omit the nil value when there is an empty node.
    """

    def __init__(self, elem=None, left=None, right=None):
        """
        Constructor for a node, the sub-trees can be omitted if there is no value for these.
        :param elem: The node payload.
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


def solution_2(tree_1: Tree, tree_2: Tree) -> bool:
    _tree_1_representation = print_in_order(tree_1)
    _tree_2_representation = print_in_order(tree_2)
    if len(_tree_2_representation) < (len(_tree_1_representation)*2):
        return False
    for node in _tree_1_representation:
        if len(list(filter((lambda node_2: node_2 == node),
                           _tree_2_representation))) < 2:
            return False
    return True


if __name__ == "__main__":
    print(f"Case 1: Reference: True -> result: {solution_2(Tree(11,Tree(9,Tree(2))),Tree(9,Tree(2),Tree(9,Tree(2,Tree(11),Tree(5)),Tree(11))))}")
