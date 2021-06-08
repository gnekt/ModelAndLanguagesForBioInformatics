import re
####################################
'''
ESERCIZIO 1:
Dato un testo, verificare che compaia almeno 4 volte la parola color o colour.
Dato un testo, verificare che compaia almeno 4 volte la parola color o colou...ur (1 o più u).
Dato un testo, verificare che compaia almeno 4 volte la parola color o colou...r (0 o più u).
'''
def ex_1(pattern):
    print(f"Case 1 {len(list(re.findall(r'(colou?r)',pattern))) >= 4}")
    print(f"Case 2 {len(list(re.findall(r'(colo(u+)?r)', pattern))) >= 4}")
    print(f"Case 3 {len(list(re.findall(r'(colo(u*)?r)', pattern))) >= 4}")

####################################
####################################
'''
ESERCIZIO 2:
Dato un testo, trovare quante volte viene ripetuto il carattere ".".
'''
def ex_2(pattern):
    return len(list(re.findall(r"\.",pattern)))

####################################
####################################
'''
ESERCIZIO 3:
Dato un testo, trovare tutti i match che si hanno con la parola Welcome e welcome
'''
def ex_3(pattern):
    return list(re.findall(r"[Ww]elcome",pattern))

####################################
####################################
'''
ESERCIZIO 4:
Dato un testo, trovare tutti i match che si hanno con la sequenza "xx(alpiù 5   o)kk".
'''
def ex_4(pattern):
    return list(re.findall(r"xx\w*o{,5}\w*kk",pattern))

####################################
####################################
'''
ESERCIZIO 5:
Consider the module “re” for defining Python regular expressions. Write a Python function which, given a string S,
checks if S contains occurrences of a substring which begins with one initial substring ‘xx’, contains the substring 
‘yy’, ends with a substring 'zz' and has the greatest length.
'''
def ex_5(pattern):
    return max(list(re.findall(r"xx\w*kk\w*zz",pattern)))

'''
ESERCIZIO 6:
Write a Python program to check that a string contains only a certain set of characters (in this case a-z, A-Z and 0-9)
'''
def ex_6(pattern):
    return len(list(re.findall(r"[a-zA-Z0-9]+", pattern))) > 0

'''
ESERCIZIO 7:
Write a Python program that matches a string that has an a followed by zero or more b's
'''
def ex_7(pattern):
    return list(re.findall(r"ab*?",pattern))

'''
ESERCIZIO 8:
Write a Python program that matches a string that has an a followed by one or more b's
'''
def ex_8(pattern):
    return list(re.findall(r"ab+?",pattern))

'''
ESERCIZIO 9:
Write a Python program that matches a string that has an a followed by zero or one b
'''
def ex_9(pattern):
    return list(re.findall(r"ab*",pattern))

'''
ESERCIZIO 10:
Write a Python program that matches a string that has an a followed by three 'b'
'''
def ex_10(pattern):
    return list(re.findall(r"ab{3}",pattern))

'''
ESERCIZIO 11:
Write a Python program that matches a string that has an a followed by two to three 'b'.
'''
def ex_11(pattern):
    return list(re.findall(r"ab{2,3}",pattern))

'''
ESERCIZIO 12:
Write a Python program to find sequences of lowercase letters joined with a underscore.'.
'''
def ex_12(pattern):
    return list(re.findall(r"([a-z]+\_)+[a-z]+$",pattern))

'''
ESERCIZIO 13:
Write a Python program to find the sequences of one upper case letter followed by lower case letters.
'''
def ex_13(pattern):
    return list(re.findall(r"[A-Z][a-z]",pattern))

'''
ESERCIZIO 14:
Write a Python program that matches a string that has an 'a' followed by anything, ending in 'b'.
'''
def ex_14(pattern):
    return list(re.findall(r"a.*b$",pattern))

'''
ESERCIZIO 15:
Write a Python program that matches a word at the beginning of a string.
'''
def ex_15(pattern):
    return list(re.findall(r"^[A-Za-z]+",pattern))

'''
ESERCIZIO 16:
Write a Python program that matches a word at the end of string, with optional punctuation.
'''
def ex_16(pattern):
    return list(re.findall(r"[A-Za-z]+[!?,.:;\"]?$",pattern))

'''
ESERCIZIO 17:
Write a Python program that matches a word containing 'z'.
'''
def ex_17(pattern):
    return list(re.findall(r"\w*z\w*",pattern))

'''
ESERCIZIO 18:
Write a Python program that matches a word containing 'z', not at the start or end of the word
'''
def ex_18(pattern):
    return list(re.findall(r"\s[^z][a-z]*z+[a-z]*[^z]\s",pattern))

'''
ESERCIZIO 19:
Write a Python program to match a string that contains only upper and lowercase letters, numbers, and underscores.
'''
def ex_19(pattern):
    return list(re.findall(r"^[a-zA-Z0-9_]+$",pattern))

'''
ESERCIZIO 20:
Write a Python program to remove leading zeros from an IP address.
'''
def ex_20(pattern):
    return re.sub(r"\.0*",".",pattern)

if __name__ == "__main__":
    ip = "216.08.094.196"
    print(ex_20(ip))
