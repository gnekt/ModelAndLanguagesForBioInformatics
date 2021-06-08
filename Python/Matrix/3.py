# define a function for computing the product of two matrices

def matrix_product(matrix1, matrix2):
    idx_1 = 0
    _result_matrix = []
    _n_columns_matrix2 = len(matrix2[0])
    for row in matrix1:
        idx_2 = 0
        _temp = []
        while idx_2 < _n_columns_matrix2:
            _temp.append(
                sum([(row[idx]*matrix2[idx][idx_2])
                     for idx in range(len(matrix1[0]))]
                    )
            )
            idx_2 += 1
        _result_matrix.append(_temp)
        idx_1 += 1
    return _result_matrix

if __name__ == "__main__":
    matrix1=[[1,2,3],[1,2,3]]
    matrix2 = [[1, 2], [1, 2],[1, 2]]
    print(matrix_product(matrix1,matrix2))
