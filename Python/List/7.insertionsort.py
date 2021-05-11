def insert(value: int, in_list: list) -> list:
    """
    Insert a value in an ordered list
    :param value: value to insert
    :param in_list: list where we add the value
    :return: the new list
    """
    for idx in range(len(in_list)):
        if in_list[idx] >= value:
            return in_list[:idx] + [value] + in_list[idx:]
    return in_list + [value]


def insertion_sort(in_list: list) -> list:
    """
    Compute the insertion sort algorithm
    :param in_list: the list where we compute the algorithm
    :return: return an ordered list
    """
    if len(in_list) == 0:
        return []
    _hidden_list = in_list.copy()
    _hidden_list.pop(0)
    inducted_list = insertion_sort(_hidden_list)
    return insert(in_list[0],inducted_list)

if __name__ == "__main__":
    print(insertion_sort([10,3,1,8,0,-1,100,140]))