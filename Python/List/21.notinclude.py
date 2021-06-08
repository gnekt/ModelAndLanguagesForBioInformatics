def not_include(in_list1: list, in_list2: list)->list:
    """
    Return a list of all the element that are not included
                in the list in_list2
    :param in_list1: The source list
    :param in_list2: The reference list
    :return: A list which holds the constraint
    """
    if len(in_list1) == 0:
        return []
    _not_inluded_tail = not_include(in_list1[1:],in_list2)
    return _not_inluded_tail + \
                ([] if in_list1[0] in in_list2 else [in_list1[0]])

if __name__ == "__main__":
    print(not_include([1,2,3,4,5],[1,2,4]))