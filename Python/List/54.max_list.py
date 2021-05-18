def max(i_list: list) -> int:
    """
    Compute the max of a list
    :param i_list: The source list
    :return: The maximum of the list
    """
    max = i_list[0]
    for element in i_list[1:]:
        if element>max:
            max=element
    return max

if __name__ == "__main__":
    print(max([4,5,6,3,4,9,10,1,3,9]))
