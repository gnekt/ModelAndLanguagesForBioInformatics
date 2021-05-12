def ascending(list):
    for element in list:
        i = list.index(element)+1
        while(i < len(list)):
            if element > list[i]:
                return False
            i += 1
    return True

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

def quick_sort(in_list:list)-> list:
    """
    Compute the quick sort
    :param in_list: the source list
    :return: the ordered list
    """
    if in_list == []:
        return []
    if ascending(in_list):
        return in_list
    pivot = in_list[(int((len(in_list)+1)/2))]
    l1,l2 = partition(pivot,in_list)
    _out_list1 = quick_sort(l1)
    _out_list2 = quick_sort(l2)
    return _out_list1 + [pivot] + _out_list2

if __name__ == "__main__":
    print(quick_sort([3,4,2,1,4,19,1,20]))