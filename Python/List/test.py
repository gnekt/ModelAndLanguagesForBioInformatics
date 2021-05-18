def remove(i_list: list)-> list:
    """
    Given an input list return a list without all the negative numbers
    :param i_list: The source list
    :return: A list with all positive member of i_list
    """
    _shallow_list = []
    for element in i_list:
        if element >= 0: _shallow_list.append(element)
    return _shallow_list

if __name__ == "__main__":
    print(remove([-1,-2,-3,1,2,3,-2]))