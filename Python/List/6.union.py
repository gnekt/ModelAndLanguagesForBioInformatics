def union(in_list_1: list, in_list_2: list)-> list:
    """
    Compute the union between two lists
    :param in_list_1: list 1
    :param in_list_2: list 2
    :return: the resulted list
    """
    _list = in_list_2.copy()
    for element in in_list_1:
        if element not in in_list_2: _list.append(element)
    return _list

if __name__ == "__main__":
    print(union([1,2,3,4,6,5],[3,4,5]))