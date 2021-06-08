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



def number_leaves(tree: Node):
    """
    Evaluate the number of leaves in a tree
    Args:
        tree:
            The source tree
    Returns:
        An integer which tell the number of leaves
    """
    if not tree:
        return 0
    if tree.elem and not tree.right and not tree.left:
        return 1
    return number_leaves(tree.left) + number_leaves(tree.right)

if __name__ == "__main__":
    print(number_leaves(Tree(1,Tree(1),Tree(1,Tree(1,Tree(1),Tree(1))))))