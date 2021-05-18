import random


def random_pick(i_list: list,n)-> list:
    """
    Select n numbers from the source list
    :param i_list: The source list
    :param n: The number of element to pick
    :return: The output list
    """
    _list_copy = i_list.copy()
    _shallow_list = []
    assert(n <= len(i_list))
    iter_idx = 1
    while n > 0:
        _shallow_list.append(_list_copy.pop(random.randint(0,len(i_list)-iter_idx)))
        iter_idx += 1
        n -= 1
    return _shallow_list

if __name__ == "__main__":
    print(random_pick([1,2,3,4,5,6],6))