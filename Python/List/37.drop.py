def drop(i_list: list,n:int) -> list:
    """
    Drop at multiple of n from the list
    :param n: Drop from the list i_list every N element
    :param i_list: The source list
    :return: The returned list
    """
    assert(n>0)
    _shallow_list = []
    k=1
    for element in i_list:
        if k % n != 0:
            _shallow_list.append(element)
        k+=1
    return _shallow_list

if __name__ == "__main__":
    print(drop([1,2,3,4,5],6))