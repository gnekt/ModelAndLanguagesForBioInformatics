def duplicate(i_list: list,n)-> list:
    """
    Duplicate each element of the list
    :param i_list: The source list
    :param n: The number of repetitions for each element
    :return: The duplicated list
    """
    _shallow_list = []
    for element in i_list:
        i=0
        while i<n:
            _shallow_list.append(element)
            i+=1
    return _shallow_list


if __name__ == "__main__":
    print(duplicate([1,2,3],7))