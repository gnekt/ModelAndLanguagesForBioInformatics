import random


def one_permutation(in_list1: list, ver) -> list:
    """
    Perform a permutation of the input list
    :param in_list1: the source list
    :return: a permutation of the list
    """
    if ver == 0:
        return random.shuffle(in_list1)
    if ver == 1:
        _shallow_list = in_list1.copy()
        _shuffled_list = []
        while len(_shallow_list) != 0:
            _index = random.randint(0, len(_shallow_list) - 1)
            element = _shallow_list[_index]
            _shuffled_list.append(element)
            _shallow_list.remove(element)
        return _shuffled_list


def all_permutations(start: list, end=[]):
    if len(start) == 0:
        print(end)
    else:
        for i in range(len(start)):
            all_permutations(start[:i] + start[i + 1:], end + start[i:i + 1])


if __name__ == "__main__":
    all_permutations([1, 2, 3, 4])
