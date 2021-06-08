def compress(i_list: list) -> list:
    """
    Compress a list contains repeated sequentially elements
        with a single copy of the element
    :param i_list: The source list
    :return: The compressed list
    """
    _shallow_list = []
    i = 0
    j = 0
    while i < len(i_list):
        _shallow_list.append(i_list[j])
        j=i+1
        while j < len(i_list):
            if i_list[i] != i_list[j]:
                break
            j+=1
        i=j
    return _shallow_list

if __name__ == "__main__":
    print(compress([1,1,1,1,2,2,2,2,3,3,3,3,3,4,4,4,1,1,1,1,1,5]))