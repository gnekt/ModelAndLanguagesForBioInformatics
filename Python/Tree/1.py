"""
All the exercises that i found on the website regarding the tree
Christian Di Maio (matr.104985)
https://github.com/christiandimaio
c.dimaio1@student.unisi.it
"""

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


##########################

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


##########################

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


##########################

def height_of_a_node(tree: Tree, node: Tree) -> int:
    """
    Compute the height of a node inside a tree
    :param tree: the bst on which we search the node
    :param node: the node to search
    :return: an int which represent the height of a given tree
    :exception: Raise No founded value if "value" is not present
    """
    if tree is None:
        raise Exception("No Founded Value")
    if tree.elem == node.elem:
        return 0
    if node.elem > tree.elem:
        return 1 + height_of_a_node(tree.right, node)
    else:
        return 1 + height_of_a_node(tree.left, node)


##########################

def equal_trees(tree1: Tree, tree2: Tree) -> bool:
    """
    Check whether or not two trees are equal
        (equal is defined in this case as node value,
            not simple the structure)
    :param tree1: The first tree
    :param tree2: The second tree
    :return: a boolean which says
                if the two trees are equal (True) or not (False)
    """
    if not tree1 and not tree2:
        return True
    if tree1.elem != tree2.elem:
        return False
    return equal_trees(tree1.left, tree2.left) and \
                equal_trees(tree1.right, tree2.right)


##########################

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
                    [(int((len(list_tree_representation)) / 2)) + 1:])
    )

##########################

def tree_in_row_matrix(tree: Tree, matrix) -> bool:
    """
    Given a bst of integers and a matrix of integers,
        verify if there exists and ordered of matrix
        whose values are in tree
    :param tree: the tree that has to be evaluated
    :param matrix: the matrix that has to be evaluated,
                type of [[x,x],[y,y]]
    :return: a boolean which represent if the statement is
                True or False
    """
    _internal_tree_representation = print_in_order(tree)
    for row in matrix:
        if all(element in row
                for element in _internal_tree_representation):
            return True
    return False


##########################

def transpose(matrix):
    """
    Compute the matrix transpose
    :param matrix: the matrix to be transposed,
        the transposing will not modify the input matrix
    :return: the transposed of matrix
    """
    _transposed = []
    for row in range(len(matrix)):
        _transposed.append(
            [matrix[i][row] for i in range(len(matrix))]
        )
    return _transposed


def tree_in_column_matrix(tree: Tree, matrix: list) -> bool:
    """
    Given a bst of integers and a matrix of integers,
        verify if there exists and ordered of matrix
        whose values are in tree
    :param tree: the tree to be evaluated
    :param matrix: the matrix to be evaluated
    :return: return a bool if the statement is True or False
    """
    _internal_tree_representation = print_in_order(tree)
    _transposed_matrix = transpose(matrix)
    for row in _transposed_matrix:
        if all(element in row
                for element in _internal_tree_representation):
            return True
    return False


##########################

def find_element_bst(tree: Tree, element: int) -> bool:
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

def find_element(tree: Tree, element: int) -> bool:
    """
        Return if an element is present into a a tree

        :param tree: a tree to be analyzed
        :param element: the element to find
        :return: The statement if the element is present or not
    """
    if tree is None:
        return False
    if tree.elem == element:
        return True
    return find_element(tree.right, element) or find_element(tree.left, element)


##########################

def add_node_bst(tree: Tree, node: Tree) -> Tree:
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

##########################

def balanced_tree(i_tree: Tree) -> bool:
    if not i_tree: return True
    if i_tree and not i_tree.right and not i_tree.left: return True
    hl,hr = 0,0
    if i_tree.left:
        hl = height_tree(i_tree.left)
    if i_tree.right:
        hr = height_tree(i_tree.right)
    return abs(hr-hl) <= 1 \
           and balanced_tree(i_tree.left) \
            and balanced_tree(i_tree.right)

##########################

def perfect_balanced_tree(i_tree: Tree) -> bool:
    if not i_tree: return True
    if i_tree and not i_tree.right and not i_tree.left: return True
    hl,hr = 0,0
    if i_tree.left:
        hl = height_tree(i_tree.left)
    if i_tree.right:
        hr = height_tree(i_tree.right)
    return hl==hr \
           and perfect_balanced_tree(i_tree.left) \
            and perfect_balanced_tree(i_tree.right)

##########################
"""
Check if a tree is complete
In the array representation of a binary tree, 
if the parent node is assigned an index of ‘i’ 
and left child gets assigned an index of ‘2*i + 1’ 
while the right child is assigned an index of ‘2*i + 2’. 
"""
# This function counts the number of nodes in a binary tree
def count_nodes(tree):
    if tree is None:
        return 0
    return (1 + count_nodes(tree.left) + count_nodes(tree.right))


# This function checks if binary tree is complete or not
def complete_tree(tree, index, number_nodes):
    # An empty is complete
    if tree is None:
        return True

    # If index assigned to current nodes is more than
    # number of nodes in tree, then tree is not complete
    if index >= number_nodes:
        return False

    # Recur for left and right subtress
    return (complete_tree(tree.left, 2 * index + 1, number_nodes)
            and complete_tree(tree.right, 2 * index + 2, number_nodes)
            )

node_count = count_nodes(tree)
index = 0
if complete_tree(tree, index, node_count):
    print("The tree is a complete binary tree")
else:
    print("The tree is not a complete binary tree")
##########################

def full_tree(i_tree: Tree) -> bool:
    if not i_tree: return True
    if i_tree and not i_tree.left and not i_tree.right: return True
    if i_tree and i_tree.left and i_tree.right:
        return full_tree(i_tree.right) and full_tree(i_tree.left)
    return False

if __name__ == "__main__":
    tree = Tree(4, Tree(2), Tree(5, Tree(4), Tree(7, Tree(6))))
    tree2 = Tree(4, Tree(2), Tree(6, Tree(5)))
    tree3 = Tree(4, Tree(2,Tree(1),Tree(3)), Tree(10, Tree(9), Tree(12)))
    # Balanced tree
    print("----- Perfect Balanced tree")
    print(f"Case 1: {perfect_balanced_tree(tree)}")
    print(f"Case 2: {perfect_balanced_tree(tree2)}")
    print(f"Case 3: {perfect_balanced_tree(tree3)}")
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
    print(f"Case 1: {height_of_a_node(tree,Tree(5))}")
    try:
        print(f"Case 2: {height_of_a_node(tree, Tree(11))}")
    except Exception as ex:
        print(f"Case 2: {ex}")
    try:
        print(f"Case 3: {height_of_a_node(tree, Tree(-1))}")
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
    # Find element in a tree
    print("----- Find element in a tree")
    print(f"Case 1: {find_element(tree, -1)}")
    print(f"Case 2: {find_element(tree, 7)}")
    # Add node in a bst
    print("----- Add node in a bst")
    print(f"Before: {print_in_order(tree)}")
    tree = add_node_bst(tree, Tree(3))
    print(f"After: {print_in_order(tree)}")