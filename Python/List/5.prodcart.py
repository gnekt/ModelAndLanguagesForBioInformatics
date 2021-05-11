def prod_cart(in_list_1: list, in_list_2: list) -> list:
    """
    Compute the cartesian product of two list
    :param in_list_1: the first list to be evaluated
    :param in_list_2: the second list to be evaluated
    :return: the prodotto cartesiano result as [[x,y],..]
    """
    _list = []
    for element_1 in in_list_1:
        for element_2 in in_list_2:
            _list.append([element_1,element_2])
    return _list

if __name__ == "__main__":
    print(prod_cart([1,2,3],["a","b","c"]))
