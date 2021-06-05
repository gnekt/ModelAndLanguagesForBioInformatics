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
    """
    Evaluate the diameter of a given tree

    Args:
        tree:
            The source tree

    Returns:
        The diameter of the tree as integer value
    """
    if not tree:
        return 0
    heigth_l = height_tree(tree.left)
    heigth_r = height_tree(tree.right)
    diameter_l = diameter(tree.left)
    diameter_r = diameter(tree.right)
    return max(heigth_r+heigth_l+1, max(diameter_r,diameter_l))

def sum_leaves(tree: Tree) -> int:
    """
    Compute the sum of the leaves in a tree

    Args:
        tree:
            The source tree

    Returns:
        An integer representing the sum
    """
    if tree:
        if not tree.right and not tree.left:
            return tree.elem
        return sum_leaves(tree.left) + sum_leaves(tree.right)
    return 0

def leaves_to_list(tree: Tree) -> int:
    """
    Retrieve the leaves of a tree

    Args:
        tree:
            The source tree

    Returns:
        A list containing the leaves of a tree
    """
    if tree:
        if not tree.right and not tree.left:
            return [tree.elem]
        return leaves_to_list(tree.left)+leaves_to_list(tree.right)
    return []

def internal_to_list(tree: Tree) -> int:
    """
        Retrieve the internal node of a tree

        Args:
            tree:
                The source tree

        Returns:
            A list containing the internal node of a tree
        """
    if tree:
        if not tree.right and not tree.left:
            return []
        return [tree.elem]+internal_to_list(tree.left)+internal_to_list(tree.right)
    return []

def count_occurrence(tree: Tree, node: int) -> int:
    """
    Count the occurrence of a node in a tree

    Args:
        tree:
            The source tree
        node:
            The integer value that we want find

    Returns:
        The number of occurrence

    """
    if tree is None: return 0
    counter = 0
    if tree.elem == node:
        counter = 1
    if tree.left:
        counter += count_occurrence(tree.left,node)
    if tree.right:
        counter += count_occurrence(tree.right, node)
    return counter

def count_occurrence_bst(tree: Tree, node: int) -> int:
    """
        Count the occurrence of a node in a bst

        Args:
            tree:
                The source bst
            node:
                The integer value that we want find

        Returns:
            The number of occurrence

    """
    if tree is None: return 0
    counter = 0
    if tree.elem == node:
        counter = 1
    if tree.left and tree.elem > node:
        counter += count_occurrence(tree.left,node)
    elif tree.right:
        counter += count_occurrence(tree.right, node)
    return counter

def tree_is_subtree(tree: Tree, sub_tree: Tree) -> bool:
    global start_sub_tree
    """
    Check if a given tree(sub_tree) is a sub-tree of a tree(tree), it may be robust to
    multiple occurrence of the root node
    :param tree: The Target tree where we want to look
    :param sub_tree: The source tree
    :return: True if the statement hold, otherwise False
    """
    if tree and not sub_tree: return True
    if not tree and not sub_tree: return True
    if not tree and sub_tree: return False
    equal_l, equal_r = False, False
    if sub_tree.elem == tree.elem:
        equal_l = tree_is_subtree(tree.left,sub_tree.left)
        equal_r = tree_is_subtree(tree.right,sub_tree.right)
    if equal_l and equal_r:
        return True
    else:
        check_l = tree_is_subtree(tree.left, start_sub_tree)
        check_r = tree_is_subtree(tree.right, start_sub_tree)
        return check_r or check_l

def position_value_intersection(tree1: Tree, tree2: Tree) -> list:
    """
    Return a list containing the intersection of two trees, wrt of structure and value
    """
    if not tree1 or not tree2:
        return []
    if tree1.elem == tree2.elem:
        return [tree1.elem]+position_value_intersection(tree1.left,tree2.left)+ \
                    position_value_intersection(tree1.right, tree2.right)
    return position_value_intersection(tree1.left,tree2.left)+ \
                    position_value_intersection(tree1.right, tree2.right)

def sum_all_nodes(i_tree: Tree) -> float:
    """
        Sum all nodes in a tree
    """
    if i_tree:
        return i_tree.elem + sum_all_nodes(i_tree.left) + sum_all_nodes(i_tree.right)
    return 0

def path_bst(i_tree: Tree, node: int) -> list:
    """
    Path finder starting from the root node, the last element of the output list
                                    will be the target node of the finder
    :param i_tree:
    :param node:
    :param temp_path:
    :return:
    """
    if i_tree:
        if i_tree.elem == node: return [node]
        if i_tree.elem > node:
            return [i_tree.elem] + path_bst(i_tree.left,node)
        else:
            return [i_tree.elem] + path_bst(i_tree.right, node)
    return []

def path(i_tree: Tree, node: int) -> list:
    """
    Path finder starting from the root node, the last element of the output list
                                    will be the target node of the finder
    :param i_tree:
    :param node:
    :param temp_path:
    :return:
    """
    if i_tree:
        if i_tree.elem == node: return [node]
        path_s, path_r = [],[]
        path_s = [i_tree.elem] + path(i_tree.left,node)
        path_r = [i_tree.elem] + path(i_tree.right,node)
        if node in path_s:
            return path_s
        if node in path_r:
            return path_r
    return []

if __name__ == "__main__":
    print(position_value_intersection(Tree(2,Tree(2),Tree(2,Tree(1,None,Tree(2)))),Tree(2,Tree(2,None,Tree(1,Tree(2))),Tree(1))))
    print(sum_all_nodes(Tree(2,Tree(1),Tree(2,Tree(1,None,Tree(2))))))
    print(path(Tree(3, Tree(1,None,Tree(2)), Tree(6, Tree(4), Tree(7,None,Tree(9)))),7))