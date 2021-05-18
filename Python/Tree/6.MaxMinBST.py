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

def max_bst(tree: Node):
    if tree:
        if tree.value and not tree.right and not tree.left:
            return tree.value
        max = max_bst(tree.right)
        if not max:
            return tree.value
        return tree.value if tree.value > max else max

def min_bst(tree: Node):
    if tree:
        if tree.value and not tree.right and not tree.left:
            return tree.value
        min = min_bst(tree.left)
        if not min:
            return tree.value
        return tree.value if tree.value < min else min
if __name__ == "__main__":
    print(max_bst(Node(5,Node(3),Node(6,None,Node(12)))))
    print(min_bst(Node(5, Node(3), Node(6, None, Node(12)))))
    a=[1,2,3]
    print(a)
    b=a
    a.pop()
    print(b)