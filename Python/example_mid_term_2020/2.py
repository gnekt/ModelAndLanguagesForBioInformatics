# Exercise 2)
# Write a Python function, which, given one input binary tree of integers T, defined following
# class Tree:
# def __init__(self, elem=None, left=None, right=None):
# self.elem = elem
# self.left = left
# self.right = right
# takes in input two binary trees T1 and T2 of integer values. No value is repeated in one of these trees.
# The function has to return the value True if and only if the trees have the same height and for each level k
# of the trees the sum of the values in level k of T1 is greater or equal to the sum of the values in level k of
# T2.
# So, for instance if T1= Tree(9,Tree(5,Tree(2),Tree(4))), T2= Tree(9,Tree(2,Tree(4))), it returns True.


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


def height_tree(tree: Tree) -> int:
    """
    Perform the height of a given tree
    :param tree: the tree to be evaluated
    :return: an int value which represent the height of the tree
    """
    if tree is None:
        return 0
    return 1 + max(height_tree(tree.left), height_tree(tree.right))


def nodes_at_level(tree: Tree, level: int) -> list:
    """
    Perform the operation of finding nodes of a given tree at the given level
    :param tree: the tree to be evaluated
    :param level: the level to be examined the finding nodes operaiton
    :return: a list which contains all the nodes of the tree at a specific level
    """
    if tree is not None:
        if level != 0:
            return nodes_at_level(tree.left, level - 1) + nodes_at_level(tree.right, level - 1)
        else:
            return [tree.elem]
    else:
        return []


def solution_2(tree_1: Tree, tree_2: Tree) -> bool:
    _tree_1_representation = print_in_order(tree_1)
    _tree_2_representation = print_in_order(tree_2)
    if height_tree(tree_1) == height_tree(tree_2):
        if all(sum(nodes_at_level(tree_1, level)) >= sum(nodes_at_level(tree_2, level)) for level in
               range(height_tree(tree_1))):
            return True
    return False


if __name__ == "__main__":
    print(f"Case 1: Reference: True -> result: {solution_2(Tree(9, Tree(5, Tree(2), Tree(4))), Tree(9, Tree(2, Tree(4))))}")
    print(f"Case 2: Reference: False -> result: {solution_2(Tree(9, Tree(5, Tree(2), Tree(4))), Tree(9, Tree(6, Tree(4))))}")
