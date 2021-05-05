# define a function which given a binary search tree T of integers and a rectangular matrix M
# of integers verify if there exists an ordered row of M (e.g. values in ascending order) whose
# values are in T.

class Node:
    def __init__(self, value, left=None, right=None):
        self.left = left
        self.right = right
        self.value = value


def find_element_bst(tree: Node, element: int) -> bool:
    """
    Return if an element is present into a bst
    :rtype: bool
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


def ascending(list: list) -> bool:
    """
    Check if a list is in ascending ordering
    :rtype: bool
    :param list: a non empty list to check
    :return: if the list is in ascending order
    """
    for i in range(len(list) - 1):
        if list[i] < list[i + 1]:
            return True
    return False


def check_fact(matrix, tree):
    _flag = [False for _ in range(len(matrix))]
    for (row,index) in zip(matrix,range(len(matrix))):
        if ascending(row):
            _flag[index] = True
            for element in row:
                if not find_element_bst(tree, element):
                    _flag[index] = False
                    break
    return True in _flag


if __name__ == '__main__':
    matrix1 = [[1, 2, 3], [2,4,5,6,10],[1, 2, 3]]
    tree = Node(4, Node(2), Node(5, Node(4), Node(10, Node(6))))
    print(check_fact(matrix1,tree))
