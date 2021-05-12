def sum_list_constraint(in_list: list, value: int) -> list:
    """
    Find a sublist of in_list on which the sum of the element is equal to N
    :param in_list: the source list
    :param value: the integer value target
    :return: a sublist
    """
    _shallow_list = []
    for element in in_list:
        if element > value:
            continue
        if element == value:
            value = 0
            _shallow_list.append(element)
            break
        if element < value:
            _shallow_list.append(element)
            value -= element
    if value != 0: return []
    return _shallow_list

if __name__ == "__main__":
    print(sum_list_constraint([1,2,3,4,5],111))


