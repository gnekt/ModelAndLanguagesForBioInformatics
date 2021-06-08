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


def solution_1(matrix: List[List[int]], matrix_1: List[List[int]]) -> List[List[int]]:
    _trasposed_matrix = transpose(matrix)
    _trasposed_matrix_1 = transpose(matrix_1)
    _output_matrix = []
    for row in _trasposed_matrix_1:
        for row_target in _trasposed_matrix:
            if all(element in row_target for element in row) and \
                    sum(row) <= sum(row_target):
                _output_matrix.append(row)

    return transpose(_output_matrix) if len(_output_matrix) > 0 else []


if __name__ == "__main__":
    print(f"Case 1: Reference: [[3, 7],[4, -1],[3,-1]] -> result: {solution_1([[3, 2, 1, 4], [4, 0, 5, 7], [4, 4, 0, -1]], [[3, 0, 1, 7], [4, 6, 5, -1], [3, 4, -2, -1]])}")
    print(f"Case 2: Reference: [] -> result: {solution_1([[3, 2, 1, 4], [4, 0, 5, 7], [4, 4, 0, -1]], [[3, 0, 1, 5], [2, 6, 5, -1], [3, 4, -2, -1]])}")
