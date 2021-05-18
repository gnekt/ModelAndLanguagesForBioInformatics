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

if __name__ == "__main__":
    print(transfer([1,2,3,5,6,7,4,4],4))