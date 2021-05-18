def transfer(i_list,target):
    """
        Return all the consecutive element in i_list equal to target and copy it into the Out list1,
        all the remaining element will be put into the Out list2.
        :param i_list: The source list
        :param target: The target element
        :return: (Out_list1,Out_list2)
    """
    i=0
    _shallow1 = []
    _shallow2 = []
    done = False
    while i < len(i_list):
        if i_list[i] != target or done:
            _shallow2.append(i_list[i])
            i+=1
            continue
        else:
            _shallow1.append(i_list[i])
            j=i+1
            while j < len(i_list) and i_list[j] == target:
                _shallow1.append(i_list[j])
                j=j+1
            done = True
        i=j
    return _shallow1,_shallow2

def pack(i_list1: list)-> list:
    """
        Pack sequence of duplicate integer in a sub list of the output list.
        Example [1,1,1,1,1,2,2,2,2,3,3,3,3] -> [[1,1,1,1,1],[2,2,2,2],[3,3,3,3]]
        :param i_list1: The extended version
        :return: The compressed nested list
    """
    _shallow_list = i_list1.copy()
    _output_list = []
    i = 0
    while i < len(_shallow_list):
        _sequence,_shallow_list = transfer(_shallow_list,_shallow_list[0])
        _output_list.append(_sequence)
    return _output_list
##########################################################################

def len_encoding(i_list: list)-> list:
    """
    Do a length encoding of a list.
    Example: encode([1,1,1,2,2,2,3,3,3]) -> [[3,1],[3,2],[3,3]]
    :param i_list: The source list
    :return: The encoded list
    """
    return list(map(lambda sublist: [len(sublist),sublist[0]], pack(i_list)))

def len_encoding_mod2(i_list: list)-> list:
    """
    Do a length encoding of a list.
    Example: encode([1,1,1,2,2,2,3,3,3]) -> [[3,1],[3,2],[3,3]]
    Mod.2:-> if an element is single put on the list without saying that has length equal to 1
    :param i_list: The source list
    :return: The encoded list
    """

    return list(map(lambda sublist: [len(sublist),sublist[0]] if len(sublist)>1 else sublist[0], pack(i_list)))


if __name__ == "__main__":
    print(len_encoding([1,1,1,2,2,2,4,3,3,3]))
    print(len_encoding_mod2([1, 1, 1, 2, 2, 2, 4, 3, 3, 3]))