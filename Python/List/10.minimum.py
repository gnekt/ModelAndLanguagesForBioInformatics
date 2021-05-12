def minimum(in_list: list) -> int:
    """
    Find the minimum of a list
    :param in_list: the source list
    :return: return an integer representing the minimum
    :exception: raise exception if the list is empty
    """
    if len(in_list) == 0:
        raise Exception("empy list")
    _min = in_list[0]
    for element in in_list[1:]:
        if element < _min:
            _min = element
    return _min

if __name__ == "__main__":
    print(minimum([10,23,3,5,2,53,3,212]))