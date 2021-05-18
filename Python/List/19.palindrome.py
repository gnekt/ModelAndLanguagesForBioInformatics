def palindrome(word: str) -> bool:
    """
    Check if a string is palindrome
    :param word: the word to analyze
    :return: True if the statement is verified, False otherwise
    """
    i=0
    while i < int((len(word)+1)/2):
        if word[i] != word[-(i+1)]: return False
        i+=1
    return True

if __name__ == "__main__":
    print(palindrome("ottootto"))
