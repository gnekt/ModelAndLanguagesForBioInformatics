def list_member(i_list1: list, i_list2: list):
    """
    Compute the element common among i_list1 and i_list2;
            not common among i_list1 and i_list2
    :param i_list1: The source list
    :param i_list2: The reference list
    :return: (Common list, Not Common list)
    """
    if len(i_list1) == 0:
        return [],[]
    _common, _not_common= list_member(i_list1[1:],i_list2)
    if i_list1[0] in i_list2:
        return _common + [i_list1[0]],_not_common
    return _common, [i_list1[0]] + _not_common

if __name__ == "__main__":
    print(list_member([1,2,3,4,6],[1,2,6]))