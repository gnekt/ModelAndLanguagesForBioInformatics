def transfer(i_list,target):
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
        Pack sequence of duplicate integer in a sub list of
            the output list.
        Example [1,1,1,1,1,2,2,2,2,3,3,3,3]
                    -> [[1,1,1,1,1],[2,2,2,2],[3,3,3,3]]
        :param i_list1: The extended version
        :return: The compressed nested list
    """
    _shallow_list = i_list1.copy()
    _output_list = []
    i = 0
    while i < len(_shallow_list):
        _sequence,_shallow_list = \
                    transfer(_shallow_list,_shallow_list[0])
        _output_list.append(_sequence)
    return _output_list

if __name__ == "__main__":
    print(pack([1,1,1,1,1,2,2,2,2,4,4,3,3,7,3,3,3]))

