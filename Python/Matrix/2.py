#  given a rectangular input matrix M, write a function which
# returns
# a boolean value True if and only if there exist two different rows
# in M,
# whose sum gives the null vector. Do the same for two different
# columns.

def check_null_vector(matrix):
    _shallow_matrix = matrix
    i=0
    for row in matrix:
        j=i+1
        while j < len(matrix):
            if sum(row) + sum(matrix[j]) == 0: return True
            j+=1
        i+=1
    return False


if __name__ == "__main__":
    print(check_null_vector([[31,-31],[-31,31],[-1,-2]]))
