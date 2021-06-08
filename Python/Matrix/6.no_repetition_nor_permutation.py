def belong(in_list1: list, in_list2: list) -> list:
    """
    Check wheter or not all the element in list in_list1 belong
        into in_list2
    :param in_list1: the source list
    :param in_list2: the target list where to find the element
                        in in_list1
    :return: return True if the statement is verified
                    otherwise return False
    """
    return all(element in in_list2 for element in in_list1)


def no_repetition_no_permutation(i_list: list)-> bool:
    """
    Given a list of list, check if some row is repeated or
                if they are permutation of other row
    :param i_list: The source matrix
    :return: Return True if there are no repeated or permutated row,
                    False otherwise
    """
    i = 0
    while i < len(i_list):
        j=i+1
        while j < len(i_list):
            if belong(i_list[i],i_list[j]):
                return False
            j += 1
        i+=1
    return True

if __name__ == "__main__":
    print(no_repetition_no_permutation(
                    [[1,2,3],[4,5,6,7],[4,7,6],[7,8,9]]
    ))