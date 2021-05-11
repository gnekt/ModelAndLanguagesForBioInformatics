from typing import List, Any


def ascending(list):
    for i in range(len(list)-1):
        if list[i] < list[i+1]:
            return True
    return False


def subset(list1: List, list2: List) -> bool:
    """
    Check if all the element of list1 are inside list2, preserving only the order
    :param list1: list1 of element to find
    :param list2: list2 target list
    :return: a boolean which represent True if the statement is respected
    """
    idx_position: List[int] = []
    for element in list1:
        _idx = idx_position[-1] if len(idx_position) > 0 else 0
        while _idx < len(list2):
            if element == list2[_idx]:
                idx_position.append(_idx)
                break
            _idx += 1
    return ascending(idx_position) and len(idx_position) == len(list1)


def sublist(list1: list, list2: list) -> bool:
    """
    Check if all the element of list1 are inside list2, preserving the order and subsequence of the elements
    :param list1: list1 of element to find
    :param list2: list2 target list
    :return: a boolean which represent True if the statement is respected
    """
    _list2_idx = 0
    for element in list2:
        if element == list1[0]:
            _list1_idx = 1
            _list2_iterator = _list2_idx+1
            while _list1_idx < len(list1):
                try:
                    _value = list2[_list2_iterator]
                except Exception as ex:
                    return False
                if _value != list1[_list1_idx]:
                    break
                _list2_iterator +=1
                _list1_idx +=1
            if _list1_idx == len(list1):
                return True
        _list2_idx +=1
    return False

if __name__ == "__main__":
    print(subset([1,2,3],[4,2,45,6,1,7,8,3,10]))
    print(sublist([1, 2, 3], [4, 2, 1, 2, 3, 3, 3, 1, 2, 4]))