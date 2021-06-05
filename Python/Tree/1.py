"""
All the exercises that i found on the website regarding the tree
Christian Di Maio (matr.104985)
https://github.com/christiandimaio
c.dimaio1@student.unisi.it
"""


class Node:
    """
    Class which represent a tree as a node, it use more or less the same notation as we used in prolog,
    the only difference is that here we omit the nil value when there is an empty node.
    """

    def __init__(self, elem, left=None, right=None):
        """
        Constructor for a node, the sub-trees can be omitted if there is no value for these.
        :param value: The node payload.
        :param left: the left sub-tree (defined as another Node)
        :param right: the right sub-tree (defined as another Node)
        """
        self.left = left
        self.right = right
        self.elem = elem


##########################

def height_tree(tree: Node) -> int:
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


##########################

def print_in_order(tree: Node) -> list:
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


##########################

def height_of_a_node(tree: Node, node: Node) -> int:
    """
    Compute the height of a node inside a tree
    :param tree: the bst on which we search the node
    :param node: the node to search
    :return: an int which represent the height of a given tree
    :exception: Raise No founded value if "value" is not present
    """
    if tree is None:
        raise Exception("No Founded Value")
    if tree.value == node.elem:
        return 0
    if node.value > tree.elem:
        return 1 + height_of_a_node(tree.right, node)
    else:
        return 1 + height_of_a_node(tree.left, node)


##########################

def equal_trees(tree1: Node, tree2: Node) -> bool:
    """
    Check whether or not two trees are equal (equal is defined in this case as node value, not simple the structure)
    :param tree1: The first tree
    :param tree2: The second tree
    :return: a boolean which says if the two trees are equal (True) or not (False)
    """
    if not tree1 and not tree2:
        return True
    if tree1.elem != tree2.elem:
        return False
    return equal_trees(tree1.left, tree2.left) and equal_trees(tree1.right, tree2.right)


##########################

def from_in_order_to_tree(list_tree_representation: list) -> Node:
    """
    Return a representation of the inorder tree as an instance of Node class
    :param list_tree_representation: the inorder list of element
    :return: a tree
    """
    if not list_tree_representation:
        return None
    if len(list_tree_representation) == 1:
        return Node(list_tree_representation[0])
    return Node(list_tree_representation[int((len(list_tree_representation) + 1) / 2)],
                from_in_order_to_tree(list_tree_representation[:(int((len(list_tree_representation) + 1) / 2))]),
                from_in_order_to_tree(list_tree_representation[(int((len(list_tree_representation) + 1) / 2)) + 1:]))


##########################

def tree_in_row_matrix(tree: Node, matrix) -> bool:
    """
    Given a bst of integers and a matrix of integers, verify if there exists and ordered of matrix
        whose values are in tree
    :param tree: the tree that has to be evaluated
    :param matrix: the matrix that has to be evaluated, type of [[x,x],[y,y]]
    :return: a boolean which represent if the statement is True or False
    """
    _internal_tree_representation = print_in_order(tree)
    for row in matrix:
        if all(element in row for element in _internal_tree_representation):
            return True
    return False


##########################

def transpose(matrix):
    """
    Compute the matrix transpose
    :param matrix: the matrix to be transposed, the transposing will not modify the input matrix
    :return: the transposed of matrix
    """
    _transposed = []
    for row in range(len(matrix)):
        _transposed.append([matrix[i][row] for i in range(len(matrix))])
    return _transposed


def tree_in_column_matrix(tree: Node, matrix: list) -> bool:
    """
    Given a bst of integers and a matrix of integers, verify if there exists and ordered of matrix
        whose values are in tree
    :param tree: the tree to be evaluated
    :param matrix: the matrix to be evaluated
    :return: return a bool if the statement is True or False
    """
    _internal_tree_representation = print_in_order(tree)
    _transposed_matrix = transpose(matrix)
    for row in _transposed_matrix:
        if all(element in row for element in _internal_tree_representation):
            return True
    return False


##########################

def find_element_bst(tree: Node, element: int) -> bool:
    """
        Return if an element is present into a bst

        :param tree: a tree to be analyzed
        :param element: the element to find
        :return: The statement if the element is present or not
    """
    if tree is None:
        return False
    if tree.elem == element:
        return True
    if element > tree.elem:
        return find_element_bst(tree.right, element)
    else:
        return find_element_bst(tree.left, element)


##########################

def add_node_bst(tree: Node, node: Node) -> Node:
    """
    Add a node in a bst, as leaf.
    :param tree: the matrix on which we want to add a node.
    :param node: the node to be added
    :return: the matrix with the value added
    """
    if tree is None:
        return node
    if tree.elem > node.elem:
        tree.left = add_node_bst(tree.left, node)
    if tree.elem < node.elem:
        tree.right = add_node_bst(tree.right, node)
    return tree


if __name__ == "__main__":
    tree = Node(4, Node(2), Node(5, Node(4), Node(7, Node(6))))
    tree2 = Node(4, Node(2), Node(6, Node(5)))
    tree3 = Node(4, Node(2), Node(10, None, Node(12)))
    # Height of a tree
    print("----- Height of a tree")
    print(f"Case 1: {height_tree(tree)}")
    print(f"Case 2: {height_tree(tree2)}")
    print(f"Case 3: {height_tree(tree3)}")
    # Print in-order
    print("----- Print in-order")
    print(f"Case 1: {print_in_order(tree)}")
    print(f"Case 2: {print_in_order(tree2)}")
    print(f"Case 3: {print_in_order(tree3)}")
    # Height of a Node
    print("----- Height of a Node")
    print(f"Case 1: {height_of_a_node(tree,Node(5))}")
    try:
        print(f"Case 2: {height_of_a_node(tree, Node(11))}")
    except Exception as ex:
        print(f"Case 2: {ex}")
    try:
        print(f"Case 3: {height_of_a_node(tree, Node(-1))}")
    except Exception as ex:
        print(f"Case 3: {ex}")
    # Equal Trees
    print("----- Equal Trees")
    print(f"Case 1: {equal_trees(tree3, tree2)}")
    print(f"Case 2: {equal_trees(tree3, tree3)}")
    print(f"Case 3: {equal_trees(tree, tree2)}")
    print(f"Case 4: {equal_trees(tree3, tree)}")
    # From in-order to tree
    print("----- From in-order to tree")
    tree = from_in_order_to_tree(print_in_order(tree))
    print(f"Case 1: {print_in_order(tree)}")
    # Tree in a Matrix Row
    print("----- Tree in a Matrix Row")
    print(f"Case 1: {tree_in_row_matrix(tree3,[[0,0,0,0],[2,4,10,12],[1,2,3,4]])}")
    print(f"Case 2: {tree_in_row_matrix(tree3, [[2]])}")
    # Tree in a Matrix Column
    print("----- Tree in a Matrix Column")
    print(f"Case 1: {tree_in_column_matrix(tree3,[[2,4,3,10],[4,2,43,50],[10,10,10,10],[12,0,0,0]])}")
    # Find element in a bst
    print("----- Find element in a bst")
    print(f"Case 1: {find_element_bst(tree, -1)}")
    print(f"Case 2: {find_element_bst(tree, 7)}")
    # Add node in a bst
    print("----- Add node in a bst")
    print(f"Before: {print_in_order(tree)}")
    tree = add_node_bst(tree, Node(3))
    print(f"After: {print_in_order(tree)}")