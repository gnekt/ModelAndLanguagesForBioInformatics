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

def max_tree(tree: Tree)-> int:
    if not tree:
        return None
    if tree.elem and not tree.left and not tree.right:
        return tree.elem
    max_recursive = []
    max_left = max_tree(tree.left)
    if max_left:
        max_recursive.append(max_left)
    max_right = max_tree(tree.right)
    if max_right:
        max_recursive.append(max_right)
    max_sub_tree = max(max_recursive)
    if max_sub_tree > tree.elem:
        return max_sub_tree
    return tree.elem

if __name__ == "__main__":
    print(max_tree(Tree(1,Tree(2,Tree(24)),Tree(20))))