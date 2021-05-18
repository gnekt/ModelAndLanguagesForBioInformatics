def rotate(i_list: list,n:int) -> list:
    """
    Rotate a list by N position.
    rotate([a,b,c,d,e,f,g,h],3).
    ->     [f,g,h,a,b,c,d,e]
    rotate([a,b,c,d,e,f,g,h],2).
    ->     [g,h,a,b,c,d,e,f]
    rotate([a,b,c,d,e,f,g,h],-2).
    ->     [c,d,e,f,g,h,a,b]
    :param i_list: The source list to be rotated
    :param n: The number of shifting
    :return:
    """
    if n == 0: return i_list
    if n > 0: return i_list[-n:]+i_list[:(len(i_list)-n)]
    return i_list[abs(n):] + i_list[:abs(n)]


if __name__ == "__main__":
    print(rotate(["a","b","c","d","e","f","g","h",],6))
    print(list(range(1,5)))
