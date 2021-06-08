def repeat_value(repetition,value)-> list:
    i=0
    _shallow = []
    while i < repetition:
        _shallow.append(value)
        i+=1
    return _shallow

def flatten(nested_list: list) -> list:
    """
    Flatten an input list which could have a hierarchical
        multi nested list
    :param nested_list: The source list
    :return: The flatten list
    """
    if len(nested_list) == 0:
        return []
    if type(nested_list[0]) is list:
        return flatten(nested_list[0]) + flatten((nested_list[1:]))
    return [nested_list[0]] + flatten(nested_list[1:])

def len_decoding(i_list)-> list:
    """
    Given a run-length code list generated construct
        its uncompressed version.
    :param list:
    :return:
    """
    return flatten(list(map(lambda sublist:
                        repeat_value(sublist[0],sublist[1]),i_list)))

if __name__ == "__main__":
    print(len_decoding([[3, 1], [3, 2], [1, 4], [3, 3]]))
