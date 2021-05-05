# Compute the height of a tree

class Node:
    def __init__(self, value, left=None, right=None):
        self.left = left
        self.right = right
        self.value = value


def height_tree(tree):
    if tree is None:
        return -1
    left_heigth = height_tree(tree.left)
    right_heigth = height_tree(tree.right)
    return 1 + max([left_heigth, right_heigth])


def print_in_order(node):
    if node is None:
        return []
    left = print_in_order(node.left)
    right = print_in_order(node.right)
    return left + [node.value] + right


def height_of_a_node(tree, node):
    if tree is None:
        raise Exception("Not Found!")
    if tree.value == node.value:
        return 0
    if node.value > tree.value:
        return 1 + height_of_a_node(tree.right, node)
    else:
        return 1 + height_of_a_node(tree.left, node)


def equal_trees(tree1, tree2):
    if tree1 and tree2:
        if tree1.value != tree2.value:
            raise Exception("Not Equal!")
        equal_trees(tree1.left, tree2.left)
        equal_trees(tree1.right, tree2.right)
    return True


def from_in_order_to_tree(list):
    if not list:
        return None
    if len(list) == 1:
        return Node(list[0])
    return Node(list[int((len(list) + 1) / 2)], from_in_order_to_tree(list[:(int((len(list) + 1) / 2))]),
                from_in_order_to_tree(list[(int((len(list) + 1) / 2)) + 1:]))


def tree_in_row_matrix(tree, matrix):
    _internal_tree_representation = print_in_order(tree)
    for row in matrix:
        if _internal_tree_representation in row:
            return True
    return False


def transpose(matrix):
    _transposed = []
    for row in range(len(matrix)):
        _transposed.append([matrix[i][row] for i in range(len(matrix))])
    return _transposed


def tree_in_column_matrix(tree: Node, matrix: list):
    """

    :param tree:
    :param matrix:
    :return:
    """
    _internal_tree_representation = print_in_order(tree)
    _transposed_matrix = transpose(matrix)
    for row in _transposed_matrix:
        if _internal_tree_representation in row:
            return True
    return False


def find_element_bst(tree: Node, element: int) -> bool:
    """
        Return if an element is present into a bst

        :param tree: a tree to be analyzed
        :param element: the element to find
        :return: The statement if the element is present or not
    """
    if tree is None:
        return False
    if tree.value == element:
        return True
    if element > tree.value:
        return find_element_bst(tree.right, element)
    else:
        return find_element_bst(tree.left, element)


if __name__ == "__main__":
    tree = Node(4, Node(2), Node(5, Node(4), Node(7, Node(6))))
    tree2 = Node(4, Node(2), Node(5, Node(3)))
    print(height_tree(tree))
    print(height_of_a_node(tree, Node(4)))
    print(print_in_order(tree))
    tree = from_in_order_to_tree(print_in_order(tree))
    print(print_in_order(tree))
    print(find_element_bst(tree, -1))
