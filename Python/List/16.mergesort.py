def merge_ordered_list(in_list1: list, in_list2: list) -> list:
    """
    Merge two ordered list
    :param in_list1: the first source list
    :param in_list2: the second source list
    :return: the merged list
    """
    _list1 = in_list1.copy()
    _list2 = in_list2.copy()
    _output_list = []
    idx_2 = 0
    for element in _list1:
        while idx_2 < len(_list2) and element > _list2[idx_2]:
            _output_list.append(_list2[idx_2])
            idx_2 += 1
        _output_list.append(element)
    while idx_2 < len(_list2):
        _output_list.append(_list2[idx_2])
        idx_2 += 1
    return _output_list


def merge_sort(in_list1: list) -> list:
    """
    Do the merge sort for a given list in input
    :param in_list1: the list to be ordered
    :return: the ordered list
    """
    if in_list1 is None:
        return []
    if len(in_list1) == 1:
        return [in_list1[0]]
    _list1,_list2= in_list1[:int(((len(in_list1)+1)/2))],\
                        in_list1[int(((len(in_list1)+1)/2)):]
    _ordered_list1 = merge_sort(_list1)
    _ordered_list2 = merge_sort(_list2)
    return merge_ordered_list(_ordered_list1,_ordered_list2)

if __name__ == "__main__":
    print(merge_sort([1,20,3,32,4,9,9,10]))