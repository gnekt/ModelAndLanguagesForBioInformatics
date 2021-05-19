# Write a Python function which takes in input two rectangular matrixes M, and M1 of integer values, having
# the same size NxM, and which returns a boolean value True if and only if there exist one column from M
# and one from M1 such that the sum of the values in each of the two columns is the same.
# For instance if M =[[3,2,1],[4,0,5]] and M1 =[[4,0,1],[6,6,6]] the returned value is True as the sum of the
# values in column 0 of M gives the value 7, as the sum of the values of column 2 in M1.
# If M1= [[4,0,5],[1,1,0]] the returned value is False.
# Hp.1 suppose that at the first find return, we don't care about more than one repetition
from typing import List


def transpose(matrix: List[List[int]]) -> List[List[int]]:
    """
    Compute the transpose of a matrix
    :param matrix: The source matrix
    :return: The transposed version
    """
    _transposed = []
    for row in range(len(matrix[0])):
        _transposed.append([matrix[i][row] for i in range(len(matrix))])
    return _transposed


def solution_1(matrix_1: List[List[int]], matrix_2: List[List[int]])-> bool:
    _transposed_matrix1 = transpose(matrix_1)
    _transposed_matrix2 = transpose(matrix_2)
    for row_1 in _transposed_matrix1:
        row_1_sum = sum(element for element in row_1)
        for row_2 in _transposed_matrix2:
            if row_1_sum == sum(element for element in row_2):
                return True
    return False


if __name__ == "__main__":
    print(f"Case 1: Reference: True -> result: {solution_1([[3, 2, 1], [4, 0, 5]], [[4,0,1],[6,6,6]])}")
    print(f"Case 2: Reference: False -> result: {solution_1([[3,2,1],[4,0,5]],[[4,0,5],[1,1,0]])}")