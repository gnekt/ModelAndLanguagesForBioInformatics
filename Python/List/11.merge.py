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

if __name__ == "__main__":
    print(merge_ordered_list([1,4,6,7,19],[3,4,5,6,7,8,9]))