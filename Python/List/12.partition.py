def partition(pivot: int, in_list: list)-> (list,list):
    """
    taken one list L of integers and one integer value N,
    divides the elements of L in two lists L1 and L2
    such that all elements less or equal than N are in L1 and in L2 all the others.
    :param pivot: the pivot number
    :param in_list: the source list
    :return: two list that follow the statement (L1,L2)
    """
    _out_list1 = []
    _out_list2 = []
    for element in in_list:
        if pivot >= element: _out_list1.append(element)
        else: _out_list2.append(element)
    return _out_list1,_out_list2

if __name__ == "__main__":
    l1,l2 = partition(5,[1,2,3,4,5,6,7,8,9,10])
    print(f"{l1}\n{l2}")
