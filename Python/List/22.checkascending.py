#Check ascending order

def ascending(list):
    for element in list:
        i = list.index(element)+1
        while(i < len(list)):
            if element > list[i]:
                return False
            i += 1
    return True