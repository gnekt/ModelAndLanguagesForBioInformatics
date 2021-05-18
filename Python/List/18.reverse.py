def reverse(in_list1: list) -> list:
    """
    Reverse a list
    :param in_list1: The input list
    :return: the reversed version
    """
    if len(in_list1) == 0:
        return []
    _list = reverse(in_list1[1:])
    return _list + [in_list1[0]]

if __name__ == "__main__":
    print(reverse([1,2,3,4,5]))