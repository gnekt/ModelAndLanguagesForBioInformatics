# Consider the module “re” for defining Python regular expressions.
# Write a Python function which, given a string S and a positive integer N,
# checks if S contains occurrences of a substring which begins with one initial
# substring ‘xx’, contains the substring ‘yy’, ends with a substring 'zz'
# and has length >N.
# The function has to print all occurrences of such substrings in S.
# For instance if s = ‘abxxa1yydfczzbxxbbbyyxxzzcaaa12cccyy’, and N==8, it will print
# the two following substrings: ‘xxa1yydfczz’ and ‘xxbbbyyxxzz’.
import re


def solution_3(target_string, length):
    matching = re.findall(r"xx(.+?)zz",target_string)
    for element in matching:
        if len(f"xx{element}zz") > length:
            print(f"xx{element}zz")


if __name__ == "__main__":
    print("Case 1: Reference : {xxa1yydfczz, xxbbbyyxxzz}")
    solution_3("abxxa1yydfczzbxxbbbyyxxzzcaaa12cccyy",8)