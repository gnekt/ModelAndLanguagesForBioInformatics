class Node:
    """
    Class which represent a tree as a node, it use more or less the same notation as we used in prolog,
    the only difference is that here we omit the nil value when there is an empty node.
    """

    def __init__(self, value, left=None, right=None):
        """
        Constructor for a node, the sub-trees can be omitted if there is no value for these.
        :param value: The node payload.
        :param left: the left sub-tree (defined as another Node)
        :param right: the right sub-tree (defined as another Node)
        """
        self.left = left
        self.right = right
        self.value = value


def simmetric(tree: Node):
    return solution(tree,tree)

def solution(tree1: Node, tree2: Node):
    if tree1 is None and tree2 is None:
        return True
    if tree1 is None or tree2 is None:
        return False
    return tree1.value == tree2.value and solution(tree1.left,tree2.right) and solution(tree1.right,tree2.left)

if __name__ == "__main__":
    print(simmetric(Node(1,Node(1,None,Node(1)),Node(1,Node(1)))))