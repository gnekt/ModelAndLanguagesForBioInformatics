def flatten(nested_list: list) -> list:
    """
    Flatten an input list which could have a hierarchical
            multi nested list
    :param nested_list: The source list
    :return: The flatten list
    """
    if len(nested_list) == 0:
        return []
    if type(nested_list[0]) is list:
        return flatten(nested_list[0]) + flatten((nested_list[1:]))
    return [nested_list[0]] + flatten(nested_list[1:])

if __name__ == "__main__":
    print(flatten([1,2,3,[1,2,[3,[4,5]]]]))