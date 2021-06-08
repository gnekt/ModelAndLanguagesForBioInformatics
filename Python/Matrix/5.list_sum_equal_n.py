# % Data una lista L1 e un numero intero N, scrivere un predicato
# % Prolog domanda1(L1,N,L2) che restituisca in L2 la lista degli
# % elementi di L1 che sono liste contenenti solo due valori interi
# % positivi fra 1 e 9 la cui somma valga N.
# % Esempio:
# % :- domanda1([[3,1],5,[2,1,1],[3],[1,1,1],a,[2,2]],4,L2).
# % yes, L2 = [[3,1], [2,2]]
from functools import reduce


def list_sum_equal_n(i_list: list, n: int) -> list:
    """
    Given a List of List retrieve in output a list of element that
        are in i_list which contains only two positive values
    between 1 - 9, on which the sum among them is equal to n
    :param i_list: The source list
    :param n: The target value
    :return: The computed list
    """
    _shallow_list = []
    for sublist in i_list:
        if len(sublist) == 2 and \
                reduce(lambda elem1,elem2: elem1+elem2,sublist) == n:
            _shallow_list.append(sublist)
    return _shallow_list


if __name__ == '__main__':
    print(list_sum_equal_n([[3,1],[5],[2,1,1],[3],[1,1,1],[2,2]],4))