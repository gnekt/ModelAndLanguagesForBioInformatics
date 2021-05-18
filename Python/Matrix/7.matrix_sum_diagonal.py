def sum_diagonal(i_list: list)-> int:
    """
    Sum all the element on the diagonal of the matrix
    :param i_list: The source list
    :return: The addition of all the element on the diagonal

    """
    i=0
    _sum = 0
    for row in i_list:
       _sum += row[i]
       i+=1
    return _sum

if __name__ == "__main__":
    print(sum_diagonal([[1,2,3],[1,2,3],[1,2,3]]))