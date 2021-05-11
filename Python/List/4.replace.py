
def replace(i_list: list, target: int,new_value: int)-> list:
    """
    Replace all the target value with a new value
    :param i_list: the list to be analyzed
    :param value: the value to replace
    :param target: the value to be replaced
    :return: the new list
    """
    return list(map(lambda value: new_value if value == target else value, i_list))


if __name__ == "__main__":
    print(replace([1,2,1,4,3,1],1,5))