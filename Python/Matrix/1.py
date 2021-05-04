# compute the transposed matrix of a given input matrix of size NxN

def transpose(matrix):
    _transposed = []
    for row in range(len(matrix)):
        _transposed.append([matrix[i][row] for i in range(len(matrix))])
    return _transposed

if __name__ == "__main__":
    print(transpose([[1,2],[1,2]]))
