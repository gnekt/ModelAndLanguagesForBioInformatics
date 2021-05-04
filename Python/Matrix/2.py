#  given a rectangular input matrix M, write a function which
# returns
# a boolean value True if and only if there exist two different rows
# in M,
# whose sum gives the null vector. Do the same for two different
# columns.

def check_null_vector(matrix):
    _shallow_matrix = matrix
    for row in matrix:
        for _shallow_row in _shallow_matrix:
            if sum(row) + sum(_shallow_row) == 0: return True


if __name__ == "__main__":
    print(check_null_vector([[31,2],[-1,2],[-1,-2]]))
