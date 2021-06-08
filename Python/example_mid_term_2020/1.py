# Exercise 1) Write a Python function which takes in input two rectangular matrices M,
# and M1 of integer values, having the same size NxM, and which returns a new matrix M2
# of size NxK (K<=M) which contains the columns in M1 for which there exists at least a
# column (say) k in M such that the values in the column in M1 are a subset of the values
# in the column k of M, and the sum of the values in the column in M1 is less than the sum
# of the values in the column k of M. If there is no column in M1 which satisfies the above
# properties then M2 = []. For instance if M =[[3,2,1,4],[4,0,5,7],[4,4,0,-1]] and
# M1 =[[3, 0,1,7],[4,6,5,-1],[3,4,-2,-1]] the returned matrix is. M2 = [[3, 7],[4, -1],[3,-1]].

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


def solution_1(matrix_1: List[List[int]], matrix_2: List[List[int]]) -> list:
    _transposed_matrix1 = transpose(matrix_1)
    _transposed_matrix2 = transpose(matrix_2)
    _matrix_3 = []
    for row_1 in _transposed_matrix1:
        row_1_sum = sum(element for element in row_1)
        for row_2 in _transposed_matrix2:
            if all(element in row_1 for element in row_2) and sum(element for element in row_2) < row_1_sum:
                _matrix_3.append(row_2)
    if len(_matrix_3) != 0:
        _transposed_matrix3 = transpose(_matrix_3)
        return _transposed_matrix3
    else:
        return _matrix_3


if __name__ == "__main__":
    print(f"Case 1: Reference: True -> result: {solution_1([[3, 2, 1, 4], [4, 0, 5, 7], [4, 4, 0, -1]], [[3, 0, 1, 7], [4, 6, 5, -1], [3, 4, -2, -1]])}")
    print(f"Case 2: Reference: False -> result: {solution_1([[3, 2, 1, 4], [4, 0, 5, 7], [4, 4, 0, -1]], [[3, 0, 1, 5], [2, 6, 5, -1], [3, 4, -2, -1]])}")
