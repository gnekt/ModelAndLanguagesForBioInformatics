# given two input lists L1 and L2,
# write a function which selects all elements which are present
# both in L1 and in L2, and returns them in a list L3

def return_all_elements(l1: list, l2: list) -> list:
    _l3 = []
    for element1 in l1:
        if element1 in l2: _l3.append(element1)
    return _l3

print(return_all_elements([1,2,4],[1,2]))