def delete_first_occurrence(i_list:list, target: int)-> list:
    """
    Delete the first occurrence of target in i_list
    :param i_list: The source list
    :param target: The target to remove
    :return: the new list
    """
    already_removed = False
    _shallow_list = []
    for element in i_list:
        if element == target and not(already_removed):
            already_removed = True
            continue
        else:
            _shallow_list.append(element)
    return _shallow_list

if __name__ == "__main__":
    print(delete_first_occurrence([1,2,3,4,5,4,5,4,6],6))