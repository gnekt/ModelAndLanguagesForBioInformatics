def local_maximum(i_list: list)-> list:
    """
    Compute the local maximum of a given list, extreme excluded
    [5,4,7,2,3,6,1,2] -> [7,6]
    :param i_list: The source list
    :return: the list of local maxima
    """
    i=1
    _shallow_list = []
    while i<len(i_list)-1:
        if i_list[i-1] <= i_list[i] >= i_list[i+1]:
            _shallow_list.append(i_list[i])
        i+=1
    return _shallow_list

if __name__ == "__main__":
    print(local_maximum([5,4,7,2,3,6,1,8]))