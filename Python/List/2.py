#Check ascending order

def ascending(list):
    for i in range(len(list)-1):
        if list[i] < list[i+1]:
            return True
    return False