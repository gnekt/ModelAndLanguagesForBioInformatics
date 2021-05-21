def disjoint(in_list1: list, in_list2: list) -> bool:
    """
    Check if two list are disjointed
    :param in_list1: List 1 as integer list
    :param in_list2: List 2 as integer list
    :return: return a boolean saying if the statement is True or False
    """
    return not any((element in in_list2) for element in in_list1)

if __name__ == "__main__":
    print(disjoint([1,10,4],[4,5,6]))